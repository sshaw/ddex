require "spec_helper"

describe DDEX::ContainerFormat do
  let(:attributes) { Fabricate.attributes_for(:container_format) }
  let(:xmldoc) { %|<ContainerFormat Namespace="#{attributes["namespace"]}" UserDefinedValue="#{attributes["user_defined_value"]}">#{attributes["value"]}</ContainerFormat>| }

  it_should_behave_like "a DDEX element"
end
