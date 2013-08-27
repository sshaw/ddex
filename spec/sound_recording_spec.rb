require "spec_helper"

describe DDEX::SoundRecording do
  let(:attributes) { Fabricate.attributes_for(:sound_recording) }
  let(:xmldoc) {
    <<-XML
      <SoundRecording LanguageAndScriptCode="#{attributes["language_and_script_code"]}">
        #{attributes["sound_recording_type"].to_xml}
        <IsArtistRelated>#{attributes["artist_related"]}</IsArtistRelated>
        #{to_xml(attributes["sound_recording_ids"])}
        #{attributes["instrumentation_description"].to_xml}
        <IsMedley>#{attributes["medley"]}</IsMedley>
        <IsPotpourri>#{attributes["potpourri"]}</IsPotpourri>
        <IsInstrumental>#{attributes["instrumental"]}</IsInstrumental>
        <IsBackground>#{attributes["background"]}</IsBackground>
        <IsBonusResource>#{attributes["bonus_resource"]}</IsBonusResource>
        <IsComputerGenerated>#{attributes["computer_generated"]}</IsComputerGenerated>
        <PerformerInformationRequired>#{attributes["performer_information_required"]}</PerformerInformationRequired>
        <LanguageOfPerformance>#{attributes["language_of_performance"]}</LanguageOfPerformance>
        <Duration>#{attributes["duration"]}</Duration>
        #{attributes["rights_agreement_id"].to_xml}
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
