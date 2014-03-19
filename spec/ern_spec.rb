require "spec_helper"
require "nokogiri"
require "ddex/ern/v36/new_release_message"

describe DDEX::ERN do
  def version_schema_location(version)
    DDEX::ERN::DEFAULT_CONFIG[version].values_at(:namespace, :schema).join(" ")
  end

  describe ".write" do
    it "requires a DDEX::Element" do
      expect { DDEX::ERN.write({}) }.to raise_error(ArgumentError, "not a DDEX object")
    end

    it "adds the version's schema to the root element's schemaLocation attribute" do
      ern = DDEX::ERN::V36::NewReleaseMessage.new(:message_schema_version_id => "ern/36")
      xml = DDEX::ERN.write(ern)
      doc = Nokogiri::XML(xml)
      expect(doc.root[DDEX::XML_SCHEMA_INSTANCE_ATTR]).to eq version_schema_location("3.6")
    end

    describe "the :schema option" do
      context "when given a schema" do
        it "includes it in the root element's schemaLocation attribute" do
          schema = "schema.xsd"
          schema_location = sprintf "%s %s", DDEX::ERN::DEFAULT_CONFIG["3.6"][:namespace], schema

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
        expect(xml).to start_with('<?xml version="1.0" encoding="iso-8859-1"?>')
      end
    end

    context "when the object is not a NewReleaseMessage" do
      it "returns the XML representation for the object"
    end

    context "when the object has no version information" do
      it "uses the configured default" do
        xml = DDEX::ERN.write(DDEX::ERN::V36::NewReleaseMessage.new)
        doc = Nokogiri::XML(xml)
        expect(doc.root[DDEX::XML_SCHEMA_INSTANCE_ATTR]).to eq version_schema_location(DDEX::ERN.default_version)
      end
    end
  end

  describe ".read" do
    describe "the XML argument" do
      it "can be a string" do
        obj = DDEX::ERN.read(File.read(fixture("ern36")))
        expect(obj).to be_an_instance_of(DDEX::ERN::V36::NewReleaseMessage)
      end

      it "can be path to a file" do
        obj = DDEX::ERN.read(fixture("ern36"))
        expect(obj).to be_an_instance_of(DDEX::ERN::V36::NewReleaseMessage)
      end

      it "can be an IO object" do
        File.open(fixture("ern36")) do |io|
          obj = DDEX::ERN.read(io)
          expect(obj).to be_an_instance_of(DDEX::ERN::V36::NewReleaseMessage)
        end
      end
    end

    context "when the XML in malformed" do
      it "raises an XMLLoadError" do
        expect { DDEX::ERN.read("<a>123</b>") }.to raise_error(DDEX::XMLLoadError)
      end
    end

    context "when the XML is not DDEX" do
      it "raises an UnknownVersionError" do
        expect { DDEX::ERN.read("<a>123</a>") }.to raise_error(DDEX::UnknownVersionError, %r{attribute missing})  # {} for ruby-mode
      end
    end

    context "when the XML is for an unsupported version" do
      it "raises an UnknownVersionError" do
        xml = File.read(fixture("ern36"))
        doc = Nokogiri::XML(xml)
        doc.root["MessageSchemaVersionId"] = "what_what_what"
        expect { DDEX::ERN.read(doc.to_s) }.to raise_error(DDEX::UnknownVersionError, /what_what_what/)
      end
    end
  end
end
