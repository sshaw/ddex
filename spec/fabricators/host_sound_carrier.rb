Fabricator :host_sound_carrier, :class_name => DDEX::HostSoundCarrier do
  release_ids(:count => 1) { Fabricate(:release_id) }
  rights_agreement_id
  titles(:count => 1) { Fabricate(:title) }
  display_artists(:count => 1) { Fabricate(:artist) }
  administration_recording_companies(:count => 1) { Fabricate(:administration_recording_company) }
end
