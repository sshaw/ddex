require "spec_helper"

describe DDEX::SoundRecordingCollectionReferenceList do
  let(:attributes) { Fabricate.attributes_for(:sound_recording_collection_reference_list) }
  let(:xmldoc) {
    <<-XML
      <SoundRecordingCollectionReferenceList>
        <NumberOfCollections>#{attributes["number_of_collections"]}</NumberOfCollections>
        #{to_xml(attributes["sound_recording_collection_references"])}
      </SoundRecordingCollectionReferenceList>
    XML
  }

  it_should_behave_like "a DDEX element"
end
