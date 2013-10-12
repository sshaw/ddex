require "spec_helper"
require "nokogiri"

describe DDEX::ERN do
  describe ".write" do
    it "requires a DDEX::Element" do
      expect { DDEX::ERN.write({}) }.to raise_error(ArgumentError, "not a DDEX object")
    end

    context "when the object is not a NewReleaseMessage" do
      it "returns the XML representation for the object"
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

    context "when the XML is for an unsupported version" do
      it "raises an UnknownVersionError" do
        xml = File.read(fixture("ern36"))
        doc = Nokogiri::XML(xml)
        doc.root["MessageSchemaVersionId"] = "what_what_what"
        expect { DDEX::ERN.read(doc.to_s) }.to raise_error(DDEX::UnknownVersionError)
      end
    end
  end
end
