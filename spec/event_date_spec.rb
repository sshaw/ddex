require "spec_helper"

describe DDEX::EventDate do
  options = {:language => "en-US", :location_description => "Great!", :territory => "US"}
  subject { described_class.new(options) }
  
  it { should be_a_kind_of DDEX::Element }
  its(:to_hash) { should eq options }
  # Need date!
  its(:to_xml) { should equal_xml %|<EventDate Language="en-US" LocationDescription="Great!" TerritoryCode="US"/>| }

  options.each do |method, value|
    its(method) { should eq value }
  end
end
