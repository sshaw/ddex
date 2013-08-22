require "spec_helper"

describe DDEX::ResourceMusicalWorkReference do
  let(:attributes) { Fabricate.attributes_for(:resource_musical_work_reference) }
  let(:xmldoc) {
    <<-XML
      <ResourceMusicalWorkReference>
        <SequenceNumber>#{attributes["sequence_number"]}</SequenceNumber>
        <DurationUsed>#{attributes["duration_used"]}</DurationUsed>
        <IsFragment>#{attributes["fragment"]}</IsFragment>
        <ResourceMusicalWorkReference>#{attributes["resource_musical_work_reference"]}</ResourceMusicalWorkReference>
      </ResourceMusicalWorkReference>
    XML
  }

  it_should_behave_like "a DDEX element"
end
