require "spec_helper"

describe DDEX::ResourceContributor do
  let(:attributes) { Fabricate.attributes_for(:resource_contributor) }
  let(:xmldoc) {
    <<-XML
      <ResourceContributor SequenceNumber="#{attributes["sequence_number"]}">
        #{attributes["party_id"].to_xml}
        #{to_xml(attributes["party_names"])}
        #{to_xml(attributes["resource_contributor_roles"])}
      </ResourceContributor>
    XML
  }

  it_should_behave_like "a DDEX element"
end
