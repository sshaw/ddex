require "spec_helper"

describe DDEX::FulfillmentDate do
  let(:attributes) { Fabricate.attributes_for(:fulfillment_date) }
  let(:xmldoc) {
    <<-XML
      <FulfillmentDate> 
        <FulfillmentDate>#{attributes["fulfillment_date"]}</FulfillmentDate>
        <ResourceReleaseReference>#{attributes["resource_release_references"][0]}</ResourceReleaseReference>
      </FulfillmentDate>
    XML
  }

  it_should_behave_like "a DDEX element"
end
