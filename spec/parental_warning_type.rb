require "spec_helper"

describe DDEX::ParentalWarningType do
  let(:attributes) { Fabricate.attributes_for(:parental_warning_type) }
  let(:xmldoc) {
    %|<ParentalWarningType Namespace="#{attributes["namespace"]}" UserDefinedValue="#{attributes["user_defined_value"]}">#{attributes["value"]}</ParentalWarningType>|
  }

  it_should_behave_like "a DDEX element"
end
