require "spec_helper"

describe DDEX::ERN do
  it "serializes ERN 3.6" do
    xml = File.read(fixture("ern/36/instance1"))
    ern = DDEX::ERN.read(xml)
    expect(DDEX::ERN.write(ern)).to equal_xml(xml)
  end
end
