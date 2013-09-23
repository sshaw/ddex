require "spec_helper"

describe DDEX::V20120404::DDEXC::ResourceContainedResourceReference do
  let(:attributes) { Fabricate.attributes_for(:resource_contained_resource_reference) }
  let(:xmldoc) {
    <<-XML
      <ResourceContainedResourceReference>
        <ResourceContainedResourceReference>#{attributes["resource_contained_resource_reference"]}</ResourceContainedResourceReference>
        <DurationUsed>#{attributes["duration_used"]}</DurationUsed>
        <StartPoint>#{attributes["start_point"]}</StartPoint>
        <Purpose>#{attributes["purpose"]}</Purpose>
      </ResourceContainedResourceReference>
    XML
  }

  it_should_behave_like "a DDEX element"
end
