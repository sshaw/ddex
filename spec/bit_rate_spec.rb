require "spec_helper"

describe DDEX::BitRate do
  it { should be_a_kind_of DDEX::Element }

  options = {:rate => 1000, :unit_of_measure => "Kbps"}

  describe "initializing an instance from a Hash" do
    subject { described_class.new(options) }

    options.each do |method, value|
      its(method) { should eq value }
    end
  end

  it "creates a Hash from the instance" do
    described_class.new(options).to_hash.should eq options    
  end
end
