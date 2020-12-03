require "spec_helper"
require "active_support/core_ext/string"

shared_examples_for "ERN metadata serialization" do |path|
  it "serializes the metadata" do
    xml  = File.read(path)
    spec = DDEX::ERN.read(xml)
    # TODO: DDEX.read(xml), DDEX.write
    expect(DDEX::ERN.write(spec)).to equal_xml(xml)
  end
end

shared_examples_for "PriceInformation/@PriceType mapping" do
  let(:doc) { Nokogiri::XML(DDEX::ERN.write(instance)) }

  describe "#type" do
    it "is serialized to the PriceType attribute" do
      expect(doc.root["PriceType"]).to eq instance.type
    end
  end

  describe "#price_type" do
    it "is serialized to the PriceType element" do
      expect(doc.at("PriceType").text).to eq instance.price_type.value
    end
  end
end

describe DDEX::ERN do
  DDEX::ERN.supported_versions.each do |version|
    describe "ERN #{version} metadata serialization" do
      each_fixture("ern/#{ version.tr(".", "") }").each do |path|
        context "given #{File.basename(path)}" do
          include_examples "ERN metadata serialization", path
        end
      end
    end
  end
end

%w[36 37 371 37D2 38 381 382 383].each do |v|
  describe "DDEX::ERN::V#{v}::PriceInformation".constantize do
    let(:instance) { described_class.new(:type => "a",
                                         :price_type => "DDEX::ERN::V#{v}::PriceType".constantize.new(:value => "b")) }

    it_should_behave_like "PriceInformation/@PriceType mapping"
  end
end
