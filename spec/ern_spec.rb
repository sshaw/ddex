require "spec_helper"
require "ddex/ern/v36/new_release_message"

describe DDEX::ERN do
  describe ".supports?" do
    it "returns true when the ERN version is supported" do
      expect(DDEX::ERN.supports?("3.6")).to be_true
    end

    it "returns false when the ERN version is not supported" do
      expect(DDEX::ERN.supports?("9.99999")).to be_false
    end

    it "accepts supported MessageSchemaVersionId values" do
      expect(DDEX::ERN.supports?("ern/36")).to be_true
    end

    it "ignores case" do
      expect(DDEX::ERN.supports?("eRn/36")).to be_true
    end
  end

  describe ".write" do
    it "requires a DDEX::Element" do
      expect { DDEX::ERN.write({}) }.to raise_error(ArgumentError, "not a DDEX object")
    end

    it "adds the version's schema to the root element's schemaLocation attribute" do
      ern = DDEX::ERN::V36::NewReleaseMessage.new(:message_schema_version_id => "ern/36")
      xml = DDEX::ERN.write(ern)
      doc = Nokogiri::XML(xml)
      expect(doc.root[DDEX::XML_SCHEMA_INSTANCE_ATTR]).to eq [ern.class.ns[1], DDEX::ERN::config["V36"][:schema]].join(" ")
    end

    describe "the :schema option" do
      context "when given a schema" do
        it "includes it in the root element's schemaLocation attribute" do
          schema = "schema.xsd"
          schema_location = sprintf "%s %s", DDEX::ERN::V36::NewReleaseMessage.ns[1], schema

          ern = DDEX::ERN::V36::NewReleaseMessage.new(:message_schema_version_id => "ern/36")
          xml = DDEX::ERN.write(ern, :schema => schema)
          doc = Nokogiri::XML(xml)

          expect(doc.root[DDEX::XML_SCHEMA_INSTANCE_ATTR]).to eq schema_location
        end
      end

      context "when given a namespace and schema" do
        it "includes them in the root element's schemaLocation attribute" do
          schema_location = "http://blah/x schema.xsd"
          ern = DDEX::ERN::V36::NewReleaseMessage.new(:message_schema_version_id => "ern/36")
          xml = DDEX::ERN.write(ern, :schema => schema_location)
          doc = Nokogiri::XML(xml)

          expect(doc.root[DDEX::XML_SCHEMA_INSTANCE_ATTR]).to eq schema_location
        end
      end
    end

    describe "the :encoding option" do
      it "is included in the resulting XML document" do
        xml = DDEX::ERN.write(DDEX::ERN::V36::NewReleaseMessage.new, :encoding => "iso-8859-1")
        doc = Nokogiri::XML(xml)
        expect(doc.encoding).to eq "iso-8859-1"
      end
    end

    context "when the object is not a NewReleaseMessage" do
      it "returns the XML representation for the object"
    end

    # TODO: this seems a little off
    context "when the object has no version information" do
      it "uses the configured default" do
        ern = DDEX::ERN::V36::NewReleaseMessage.new(:message_schema_version_id => "ern/36")
        xml = DDEX::ERN.write(ern)
        doc = Nokogiri::XML(xml)
        expect(doc.root[DDEX::XML_SCHEMA_INSTANCE_ATTR]).to eq [ern.class.ns[1], DDEX::ERN.config["V36"][:schema]].join(" ")
      end
    end
  end

  describe ".read" do
    describe "MessageSchemaVersionId detection" do
      %w[/ern/35 ern/35/ //ern/35// 3.5].each do |v|
        it "parses #{v} as ERN 3.5" do
          doc = load_fixture("ern/35/instance1")
          doc.root["MessageSchemaVersionId"] = v
          obj = DDEX::ERN.read(doc.to_s)
          expect(obj).to be_an_instance_of(DDEX::ERN::V35::NewReleaseMessage)
        end
      end
    end

    describe "the XML argument" do
      it "can be a string" do
        obj = DDEX::ERN.read(File.read(fixture("ern/36/instance1")))
        expect(obj).to be_an_instance_of(DDEX::ERN::V36::NewReleaseMessage)
      end

      it "can be path to a file" do
        obj = DDEX::ERN.read(fixture("ern/36/instance1"))
        expect(obj).to be_an_instance_of(DDEX::ERN::V36::NewReleaseMessage)
      end

      it "can be an IO object" do
        File.open(fixture("ern/36/instance1")) do |io|
          obj = DDEX::ERN.read(io)
          expect(obj).to be_an_instance_of(DDEX::ERN::V36::NewReleaseMessage)
        end
      end
    end

    context "when the XML is malformed" do
      it "raises an XMLLoadError" do
        expect { DDEX::ERN.read("<a>123</b>") }.to raise_error(DDEX::XMLLoadError)
      end
    end

    context "when the XML is not DDEX" do
      it "raises an UnknownVersionError" do
        expect { DDEX::ERN.read("<a>123</a>") }.to raise_error(DDEX::UnknownVersionError, %r{attribute missing})  # {} for ruby-mode
      end
    end

    context "when the XML is for an unknown MessageSchemaVersionId" do
      it "raises an UnknownVersionError" do
        doc = load_fixture("ern/36/instance1")
        doc.root["MessageSchemaVersionId"] = "what_what_what"
        expect { DDEX::ERN.read(doc.to_s) }.to raise_error(DDEX::UnknownVersionError, /what_what_what/)
      end
    end

    context "with a user-defined MessageSchemaVersionId" do
      it "parses the XML for the version set by the user-defined version" do
        user_default = "ern/tray_sic!@#"
        DDEX::ERN.config["V36"][:message_schema_version_id] = user_default

        # Load a 3.5.1 schema
        doc = load_fixture("ern/351/instance1")
        doc.root["MessageSchemaVersionId"] = user_default

        obj = DDEX::ERN.read(doc.to_s)
        expect(obj).to be_an_instance_of(DDEX::ERN::V36::NewReleaseMessage)
      end
    end

    describe "the :version option" do
      it "parses XML as the given MessageSchemaVersionId" do
        obj = DDEX::ERN.read(fixture("ern/36/instance1"), :version => "ern/34")
        expect(obj).to be_an_instance_of(DDEX::ERN::V34::NewReleaseMessage)
      end

      context "when the MessageSchemaVersionId is unsupported" do
        it "raises an UnknownVersionError" do
          expect {
            DDEX::ERN.read(fixture("ern/36/instance1"), :version => "__DATA__")
          }.to raise_error(DDEX::UnknownVersionError, /__DATA__/)
        end
      end
    end
  end
end
