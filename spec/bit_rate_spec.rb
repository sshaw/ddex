require "spec_helper"

describe DDEX::BitRate do
  options = {:rate => 1000, :unit_of_measure => "Kbps"}

  subject { described_class.new(options) }

  it { should be_a_kind_of DDEX::Element }

  its(:to_hash) { should eq options }
  its(:to_xml) { should equal_xml %|<BitRate UnitOfMeasure="Kbps">1000</BitRate>| }

  options.each do |method, value|
    its(method) { should eq value }
  end
end
