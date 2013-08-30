require "spec_helper"

describe DDEX::SoundRecordingCollectionReference do
  let(:attributes) { Fabricate.attributes_for(:sound_recording_collection_reference) }
  let(:xmldoc) {
    <<-XML
      <SoundRecordingCollectionReference>
        <SequenceNumber>#{attributes["sequence_number"]}</SequenceNumber>
        <SoundRecordingCollectionReference>#{attributes["sound_recording_collection_reference"]}</SoundRecordingCollectionReference>
        <StartTime>#{attributes["start_time"]}</StartTime>
        <Duration>#{attributes["duration"]}</Duration>
        <EndTime>#{attributes["end_time"]}</EndTime>
        <ReleaseResourceType>#{attributes["release_resource_type"]}</ReleaseResourceType>
      </SoundRecordingCollectionReference>
    XML
  }

  it_should_behave_like "a DDEX element"
end
