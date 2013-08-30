require "spec_helper"

describe DDEX::ExpressionType do
  let(:attributes) { Fabricate.attributes_for(:expression_type) }
  let(:xmldoc) { %|<ExpressionType>#{attributes["value"]}</ExpressionType>| }

  it_should_behave_like "a DDEX element"
end
