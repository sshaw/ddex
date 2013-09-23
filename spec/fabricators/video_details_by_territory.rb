Fabricator :video_details_by_territory, :from => :sound_recording_details_by_territory, :class_name => DDEX::V20120404::DDEXC::VideoDetailsByTerritory do
  clines(:count => 1) { Fabricate(:cline) }
end
