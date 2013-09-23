# DSR, MWL
#
# Fabricator :image, :class_name => DDEX::V20120404::DDEXC::Image do
#   artist_related false
#   creation_date
#   image_ids(:count => 1) { Fabricate(:image_id) }
#   image_type
#   image_details_by_territory(:count => 1) { Fabricate(:image_details_by_territory) }
#   language_and_script_code "en-US"
#   resource_reference "A1"
#   titles(:count => 1) { Fabricate(:title) }
# end

Fabricator :image_type, :class_name => DDEX::V20120404::DDEXC::ImageType do
  namespace "gatinha:fofinha:quentinha"
  value "FrontCover"
  user_defined_value "AST"
end

Fabricator :ern_image, :from => :image, :class_name => DDEX::ERN::V341::Image do
  updated false
end
