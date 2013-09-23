require "spec_helper"

describe DDEX::V20120404::DDEXC::SoundRecordingId do
  let(:attributes) { Fabricate.attributes_for(:sound_recording_id) }
  let(:xmldoc) {
    <<-XML
      <SoundRecordingId IsReplaced="#{attributes["replaced"]}">
        <ISRC>#{attributes["isrc"]}</ISRC>
        #{attributes["catalog_number"].to_xml}
        #{to_xml(attributes["proprietary_ids"])}
      </SoundRecordingId>
    XML
  }

  it_should_behave_like "a DDEX element"
end
