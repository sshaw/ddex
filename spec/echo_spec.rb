require "spec_helper"
require "ddex/echo/v11/manifest_message"

describe DDEX::ECHO do
  describe ".supports?" do
    it "returns true when the ECHO version is supported" do
      expect(DDEX::ECHO.supports?("1.1")).to eql true
    end

    it "returns false when the ECHO version is not supported" do
      expect(DDEX::ECHO.supports?("9.99999")).to eql false
    end

    it "accepts supported MessageVersionId values" do
      expect(DDEX::ECHO.supports?("2011/echo/11")).to eql true
    end

    it "ignores case" do
      expect(DDEX::ECHO.supports?("2011/eChO/11")).to eql true
    end
  end

  describe ".write" do
    it "requires a DDEX::Element" do
      expect { DDEX::ECHO.write({}) }.to raise_error(ArgumentError, "not a DDEX object")
    end

    it "adds the version's schema to the root element's schemaLocation attribute" do
      echo = DDEX::ECHO::V11::ManifestMessage.new(:message_version_id => "2011/echo/11")
      xml = DDEX::ECHO.write(echo)
      doc = Nokogiri::XML(xml)

      expect(doc.root[DDEX::XML_SCHEMA_INSTANCE_ATTR]).to eq [echo.class.ns[1], DDEX::ECHO::config["V11"][:schema]].join(" ")
    end

    describe "the :schema option" do
      context "when given a schema" do
        it "includes it in the root element's schemaLocation attribute" do
          schema = "schema.xsd"
          schema_location = sprintf "%s %s", DDEX::ECHO::V11::ManifestMessage.ns[1], schema

          echo = DDEX::ECHO::V11::ManifestMessage.new(:message_version_id => "2011/echo/11")
          xml = DDEX::ECHO.write(echo, :schema => schema)
          doc = Nokogiri::XML(xml)

          expect(doc.root[DDEX::XML_SCHEMA_INSTANCE_ATTR]).to eq schema_location
        end
      end

      context "when given a namespace and schema" do
        it "includes them in the root element's schemaLocation attribute" do
          schema_location = "http://blah/x schema.xsd"
          echo = DDEX::ECHO::V11::ManifestMessage.new(:message_version_id => "2011/echo/11")
          xml = DDEX::ECHO.write(echo, :schema => schema_location)
          doc = Nokogiri::XML(xml)

          expect(doc.root[DDEX::XML_SCHEMA_INSTANCE_ATTR]).to eq schema_location
        end
      end
    end

    describe "the :encoding option" do
      it "is included in the resulting XML document" do
        xml = DDEX::ECHO.write(DDEX::ECHO::V11::ManifestMessage.new, :encoding => "iso-8859-1")
        doc = Nokogiri::XML(xml)
        expect(doc.encoding).to eq "iso-8859-1"
      end
    end

    context "when the object is not a ManifestMessage" do
      it "returns the XML representation for the object"
    end

    # TODO: this seems a little off
    context "when the object has no version information" do
      it "uses the configured default" do
        echo = DDEX::ECHO::V11::ManifestMessage.new(:message_version_id => "2011/echo/11")
        xml = DDEX::ECHO.write(echo)
        doc = Nokogiri::XML(xml)
        expect(doc.root[DDEX::XML_SCHEMA_INSTANCE_ATTR]).to eq [echo.class.ns[1], DDEX::ECHO.config["V11"][:schema]].join(" ")
      end
    end
  end

  describe ".read" do
    describe "MessageVersionId detection" do
      %w[/2011/echo/11 /2011/echo/11/ //2011//echo/11// 1.1].each do |v|
        it "parses #{v} as ECHO 1.1" do
          doc = load_fixture("echo/11/instance1")
          doc.root["MessageVersionId"] = v
          obj = DDEX::ECHO.read(doc.to_s)
          expect(obj).to be_an_instance_of(DDEX::ECHO::V11::ManifestMessage)
        end
      end
    end

    describe "the XML argument" do
      it "can be a string" do
        obj = DDEX::ECHO.read(File.read(fixture("echo/11/instance1")))
        expect(obj).to be_an_instance_of(DDEX::ECHO::V11::ManifestMessage)
      end

      it "can be path to a file" do
        obj = DDEX::ECHO.read(fixture("echo/11/instance1"))
        expect(obj).to be_an_instance_of(DDEX::ECHO::V11::ManifestMessage)
      end

      it "can be an IO object" do
        File.open(fixture("echo/11/instance1")) do |io|
          obj = DDEX::ECHO.read(io)
          expect(obj).to be_an_instance_of(DDEX::ECHO::V11::ManifestMessage)
        end
      end
    end

    context "when the XML is malformed" do
      it "raises an XMLLoadError" do
        expect { DDEX::ECHO.read("<a>123</b>") }.to raise_error(DDEX::XMLLoadError)
      end
    end

    context "when the XML is not DDEX" do
      it "raises an UnknownVersionError" do
        expect { DDEX::ECHO.read("<a>123</a>") }.to raise_error(DDEX::UnknownVersionError, %r{attribute missing})
      end
    end

    context "when the XML is for an unknown MessageVersionId" do
      it "raises an UnknownVersionError" do
        doc = load_fixture("echo/11/instance1")
        doc.root["MessageVersionId"] = "what_what_what"
        expect { DDEX::ECHO.read(doc.to_s) }.to raise_error(DDEX::UnknownVersionError, /what_what_what/)
      end
    end

    context "with a user-defined MessageVersionId" do
      it "parses the XML for the version set by the user-defined version" do
        skip 'Need a valid ECHO message in version other than 1.1'

        user_default = "echo/tray_sic!@#"
        DDEX::ECHO.config["V11"][:message_version_id] = user_default

        # Load a v1.4 schema
        doc = load_fixture("ern/14/instance1")
        doc.root["MessageVersionId"] = user_default

        obj = DDEX::ECHO.read(doc.to_s)
        expect(obj).to be_an_instance_of(DDEX::ECHO::V11::ManifestMessage)
      end
    end

    describe "the :version option" do
      it "parses XML as the given MessageVersionId" do
        skip 'Need a valid ECHO message in version other than 1.1'

        obj = DDEX::ECHO.read(fixture("echo/14/instance1"), :version => "2011/echo/11")
        expect(obj).to be_an_instance_of(DDEX::ECHO::V11::ManifestMessage)
      end

      context "when the MessageVersionId is unsupported" do
        it "raises an UnknownVersionError" do
          expect {
            DDEX::ECHO.read(fixture("echo/11/instance1"), :version => "__DATA__")
          }.to raise_error(DDEX::UnknownVersionError, /__DATA__/)
        end
      end
    end
  end
end
