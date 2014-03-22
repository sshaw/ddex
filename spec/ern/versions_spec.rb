require "spec_helper"

shared_examples_for "metadata serialization" do |path|
  it "serializes the metadata" do
    xml  = File.read(path)
    spec = DDEX::ERN.read(xml)
    # TODO: DDEX.read(xml), DDEX.write
    expect(DDEX::ERN.write(spec)).to equal_xml(xml)
  end
end

shared_examples_for "PriceInformation/@PriceType mapping" do
  let(:doc) do
    x = described_class.new(:price_type => "a", :type => "b")
    p x
    xml = DDEX::ERN.write(described_class.new(:price_type => "a", :type => "b"))
    Nokogiri::XML(xml)
  end

  describe "#type" do
    it "is serialized to the PriceType attribute" do
      expect(doc["PriceType"]).to eq "a"
    end
  end

  describe "#price_type" do
    it "is serialized to the PriceType element" do
      expect(doc.at("PriceType").text).to eq "b"
    end
  end
end

describe DDEX::ERN do
  # Again, maybe use a class method to retrieve this info
  DDEX::ERN.supported_versions.each do |version|
    describe "ERN #{version} metadata serialization" do
      each_fixture("ern/#{ version.tr(".", "") }").each do |path|
        context "given #{File.basename(path)}" do
          include_examples "metadata serialization", path
        end
      end
    end
  end
end

#require "ddex/ern/v36/price_information"

# describe DDEX::ERN::V36::PriceInformation do  
#   it_should_behave_like "PriceInformation/@PriceType mapping"
# end

