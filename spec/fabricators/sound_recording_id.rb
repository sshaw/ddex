Fabricator :sound_recording_id, :class_name => DDEX::SoundRecordingId do
  replaced true
  isrc "X000123"
  catalog_number
  proprietary_ids(:count => 1) { Fabricate(:proprietary_id) }
end
