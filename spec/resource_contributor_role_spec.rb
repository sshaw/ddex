require "spec_helper"

describe DDEX::V20120404::DDEXC::ResourceContributorRole do
  let(:attributes) { Fabricate.attributes_for(:resource_contributor_role) }
  let(:xmldoc) { %|<ResourceContributorRole Namespace="#{attributes["namespace"]}" UserDefinedValue="#{attributes["user_defined_value"]}">#{attributes["value"]}</ResourceContributorRole>| }

  it_should_behave_like "a DDEX element"
end
