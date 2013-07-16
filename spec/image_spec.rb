describe DDEX::Image do
  options = {}
  subject { described_class.new(options) }

  it { should be_a_kind_of DDEX::Element }
end
