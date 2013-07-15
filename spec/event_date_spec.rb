require "spec_helper"

describe DDEX::EventDate do
  it { should be_a_kind_of DDEX::Element }

  describe "initializing an instance from a Hash" do
    options = {:language => "en-US", :location_description => "Great!", :territory => "US"}
    subject { described_class.new(options) }

    options.each do |method, value|
      its(method) { should eq value }
    end
  end
end
