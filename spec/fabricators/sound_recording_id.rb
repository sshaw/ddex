Fabricator :sound_recording_id, :class_name => DDEX::V20120404::DDEXC::SoundRecordingId do
  replaced true
  isrc "X000123"
  catalog_number
  proprietary_ids(:count => 1) { Fabricate(:proprietary_id) }
end
