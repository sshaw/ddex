require "spec_helper"

describe DDEX::V20120404::DDEXC::DrmPlatformType do
  let(:attributes) { Fabricate.attributes_for(:drm_platform_type) }
  let(:xmldoc) { %|<DrmPlatformType Namespace="#{attributes["namespace"]}" UserDefinedValue="#{attributes["user_defined_value"]}" Version="#{attributes["version"]}">#{attributes["value"]}</DrmPlatformType>| }

  it_should_behave_like "a DDEX element"
end
