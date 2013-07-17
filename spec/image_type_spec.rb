require "spec_helper"

describe DDEX::ImageType do
  options = {
    :namespace => "gatinha:fofinha:quentinha",
    :value => "FrontCover",
    :user_defined_value => "AST"
  }

  subject { described_class.new(options) }

  it { should be_a_kind_of DDEX::Element }
  its(:to_hash) { should eq options }
  its(:to_xml) { should equal_xml %|<ImageType Namespace="gatinha:fofinha:quentinha" UserDefinedValue="AST">FrontCover</ImageType>| }
end
