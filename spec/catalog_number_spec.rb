require "spec_helper"

describe DDEX::V20120404::DDEXC::CatalogNumber do
  let(:attributes) { Fabricate.attributes_for(:catalog_number) }
  let(:xmldoc) { %|<CatalogNumber Namespace="#{attributes["namespace"]}">#{attributes["value"]}</CatalogNumber>| }

  it_should_behave_like "a DDEX element"
end
