Fabricator :release_id, :class_name => DDEX::ReleaseId do
  replaced false
  grid "A12425GABC1234002M"
  isrc "BRBMG0300711"
  icpn
  catalog_number
  proprietary_ids(:count => 1) { Fabricate(:proprietary_id) }
end

