require "spec_helper"
require "nokogiri"
require "ddex/ern/v36/new_release_message"

describe DDEX::ERN do
  describe ".write" do
    it "requires a DDEX::Element" do
      expect { DDEX::ERN.write({}) }.to raise_error(ArgumentError, "not a DDEX object")
    end

    it "adds the version's schema to the root element" do
      pending
      ern = DDEX::ERN::V36::NewReleaseMessage.new(:message_schema_version_id => "ern/36")
      xml = DDEX::ERN.write(ern)
    end

    describe "the :schema option" do
      it "adds a remote schema to the root element" do
        pending
        ern = DDEX::ERN::V36::NewReleaseMessage.new(:message_schema_version_id => "ern/36")
        xml = DDEX::ERN.write(ern, :schema => "http://example.com")
      end

      it "adds a local schema to the root element" do
        pending
        ern = DDEX::ERN::V36::NewReleaseMessage.new(:message_schema_version_id => "ern/36")
        xml = DDEX::ERN.write(ern, :schema => "a/schema.xsd")
      end
    end

    context "when the object is not a NewReleaseMessage" do
      it "returns the XML representation for the object"
    end

    context "when the object has no version information" do
      it "uses the configured default"
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
