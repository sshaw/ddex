require "spec_helper"

describe DDEX::ERN::SoundRecording do
  let(:attributes) { Fabricate.attributes_for(:ern_sound_recording) }
  let(:xmldoc) {
    <<-XML
      <SoundRecording IsUpdated="#{attributes["updated"]}" LanguageAndScriptCode="#{attributes["language_and_script_code"]}">
        #{attributes["sound_recording_type"].to_xml}
        <IsArtistRelated>#{attributes["artist_related"]}</IsArtistRelated>
        #{to_xml(attributes["sound_recording_ids"])}
        #{to_xml(attributes["indirect_sound_recording_ids"]).gsub("MusicalWorkId", "IndirectSoundRecordingId")}
        <ResourceReference>#{attributes["resource_reference"]}</ResourceReference>
        #{attributes["reference_title"].to_xml}
        #{attributes["instrumentation_description"].to_xml.gsub(/(Description)/, 'Instrumentation\1')}
        <IsMedley>#{attributes["medley"]}</IsMedley>
        <IsPotpourri>#{attributes["potpourri"]}</IsPotpourri>
        <IsInstrumental>#{attributes["instrumental"]}</IsInstrumental>
        <IsBackground>#{attributes["background"]}</IsBackground>
        <IsBonusResource>#{attributes["bonus_resource"]}</IsBonusResource>
        <IsComputerGenerated>#{attributes["computer_generated"]}</IsComputerGenerated>
        <NoSilenceBefore>#{attributes["no_silence_before"]}</NoSilenceBefore>
        <NoSilenceAfter>#{attributes["no_silence_after"]}</NoSilenceAfter>
        <PerformerInformationRequired>#{attributes["performer_information_required"]}</PerformerInformationRequired>
        <LanguageOfPerformance>#{attributes["language_of_performance"]}</LanguageOfPerformance>
        <Duration>#{attributes["duration"]}</Duration>
        #{attributes["rights_agreement_id"].to_xml}
        #{attributes["sound_recording_collection_reference_list"].to_xml}
        #{to_xml(attributes["resource_musical_work_reference_list"])}
        #{to_xml(attributes["resource_contained_resource_reference_list"])}
        #{attributes["creation_date"].to_xml}
        #{attributes["mastered_date"].to_xml}
        #{to_xml(attributes["sound_recording_details_by_territory"])}
      </SoundRecording>
    XML
  }

  it_should_behave_like "a DDEX element"
end
