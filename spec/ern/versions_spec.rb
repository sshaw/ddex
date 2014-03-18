require "spec_helper"

shared_examples_for "metadata serialization" do |path|
  it "serializes the metadata" do
    xml  = File.read(path)
    spec = DDEX::ERN.read(xml)
    # TODO: DDEX.read(xml), DDEX.write
    expect(DDEX::ERN.write(spec)).to equal_xml(xml)
  end
end

describe DDEX::ERN do
  # Again, maybe use a class method to retrieve this info
  %w[3.4  3.4.1  3.5  3.6].each do |spec|
    describe "ERN #{spec} metadata serialization" do
      each_fixture("ern/#{ spec.tr(".", "") }").each do |path|
        context "given #{File.basename(path)}" do
          include_examples "metadata serialization", path
        end
      end
    end
  end
end
