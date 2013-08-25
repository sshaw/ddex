Fabricator :display_artist, :from => :artist, :class_name => DDEX::DisplayArtist
Fabricator :remastered_date, :from => :event_date, :class_name => DDEX::RemasteredDate

Fabricator :sound_recording_details_by_territory, :class_name => DDEX::SoundRecordingDetailsByTerritory do
  language_and_script_code "en-US"
  territory_codes ["US"]
  excluded_territory_codes ["US"]
  titles(:count => 1) { Fabricate(:title) }
  display_artists(:count => 1) { Fabricate(:display_artist) }
  resource_contributors(:count => 1) { Fabricate(:resource_contributor) }
  indirect_resource_contributors(:count => 1) { Fabricate(:indirect_resource_contributor) }
  rights_agreement_id
  label_names(:count => 1) { Fabricate(:label_name) }
  rights_controller(:count => 1) { Fabricate(:rights_controller) }
  remastered_date
  original_resource_release_date
  plines(:count => 1) { Fabricate(:pline) }
end
