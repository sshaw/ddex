Fabricator :video_id, :class_name => DDEX::V20120404::DDEXC::VideoId do
  replaced false
  isrc "BRBMG0300729"
  isan "0000-0001-8947-0000-8-0000-0000-D"
  visan "0000-0001-8947-0000-8-0000-0000-D"
  catalog_number
  proprietary_ids(:count => 1) { Fabricate(:proprietary_id) }
end

