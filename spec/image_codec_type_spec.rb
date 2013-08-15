require "spec_helper"

describe DDEX::ImageCodecType do
  let(:attributes) { Fabricate.attributes_for(:drm_platform_type) }
  let(:xmldoc) { %|<ImageCodecType Namespace="#{attributes["namespace"]}" UserDefinedValue="#{attributes["user_defined_value"]}" Version="#{attributes["version"]}">#{attributes["value"]}</ImageCodecType>| }

  it_should_behave_like "a DDEX element"
end
