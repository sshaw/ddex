require "spec_helper"

describe DDEX::HostSoundCarrier do
  let(:attributes) { Fabricate.attributes_for(:host_sound_carrier) }
  let(:xmldoc) {
    <<-XML
      <HostSoundCarrier>
        #{to_xml(attributes["release_ids"])}
        #{attributes["rights_agreement_id"].to_xml}
        #{to_xml(attributes["titles"])}
        #{to_xml(attributes["display_artists"]).gsub(/(Artist)\b/, 'Display\1')}
        #{to_xml(attributes["administrating_record_companies"])}
        <TrackNumber>#{attributes["track_number"]}</TrackNumber>
        <VolumeNumberInSet>#{attributes["volume_number_in_set"]}</VolumeNumberInSet>
      </HostSoundCarrier>
    XML
  }

  it_should_behave_like "a DDEX element"
end
