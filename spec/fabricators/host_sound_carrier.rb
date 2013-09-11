Fabricator :host_sound_carrier, :class_name => DDEX::HostSoundCarrier do
  release_ids(:count => 1) { Fabricate(:release_id) }
  rights_agreement_id
  titles(:count => 1) { Fabricate(:title) }
  display_artists(:count => 1) { Fabricate(:artist) }
  administrating_record_companies(:count => 1) { Fabricate(:administrating_record_company) }
  track_number "1"
  volume_number_in_set "1"
end
