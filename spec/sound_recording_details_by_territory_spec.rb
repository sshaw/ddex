require "spec_helper"

describe DDEX::V20120404::DDEXC::SoundRecordingDetailsByTerritory do
  let(:attributes) { Fabricate.attributes_for(:sound_recording_details_by_territory) }
  let(:xmldoc) {
    <<-XML
      <SoundRecordingDetailsByTerritory LanguageAndScriptCode="#{attributes["language_and_script_code"]}">
        <TerritoryCode>#{attributes["territory_codes"][0]}</TerritoryCode>
        <ExcludedTerritoryCode>#{attributes["excluded_territory_codes"][0]}</ExcludedTerritoryCode>
        #{to_xml(attributes["titles"])}
        #{to_xml(attributes["display_artists"]).gsub(/(Artist)\b/, 'Display\1')}
        #{to_xml(attributes["resource_contributors"])}
        #{to_xml(attributes["indirect_resource_contributors"])}
        #{attributes["rights_agreement_id"].to_xml}
        #{to_xml(attributes["label_names"])}
        #{to_xml(attributes["rights_controller"])}
        #{attributes["remastered_date"].to_xml.gsub("Event", "Remastered")}
        #{attributes["original_resource_release_date"].to_xml}
        #{to_xml(attributes["plines"])}
      </SoundRecordingDetailsByTerritory>
    XML
  }

  it_should_behave_like "a DDEX element"
end
