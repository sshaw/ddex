Fabricator :musical_work_id, :class_name => DDEX::V20120404::DDEXC::MusicalWorkId do
  replaced true
  iswc "T-000.000.001-0"
  opus_number "1"
  composer_catalog_number ["K. 626"]
  proprietary_ids(:count => 1) { Fabricate(:proprietary_id) }
end

