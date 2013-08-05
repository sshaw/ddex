Fabricator :image_id, :class_name => DDEX::ImageId do
  replaced false
  proprietary_ids(:count => 1) { Fabricate(:proprietary_id) }
end
