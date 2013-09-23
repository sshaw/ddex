Fabricator :artist, :class_name => DDEX::V20120404::DDEXC::Artist do
  sequence_number 1
  party_names(:count => 1) { Fabricate(:party_name) }
  party_id
  artist_roles(:count => 1) { Fabricate(:artist_role) }
end
