require "spec_helper"

describe DDEX::ERN do
  it "serializes ERN 3.4" do
    xml = File.read(fixture("ern/34/instance1"))
    ern = DDEX::ERN.read(xml)
    expect(DDEX::ERN.write(ern)).to equal_xml(xml)
  end
end
