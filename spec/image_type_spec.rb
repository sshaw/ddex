require "spec_helper"

describe DDEX::V20120404::DDEXC::ImageType do
  let(:attributes) { Fabricate.attributes_for(:image_type) }
  let(:xmldoc) {
    %|<ImageType Namespace="#{attributes["namespace"]}" UserDefinedValue="#{attributes["user_defined_value"]}">#{attributes["value"]}</ImageType>|
  }

  it_should_behave_like "a DDEX element"
end
