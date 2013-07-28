Fabricator :image, :class_name => DDEX::Image do
  artist_related false
  language_and_script_code "en-US"
  image_type
end

Fabricator :image_type, :class_name => DDEX::ImageType do
  namespace "gatinha:fofinha:quentinha"
  value "FrontCover"
  user_defined_value "AST"
end

Fabricator :ern_image, :from => :image, :class_name => DDEX::ERN::Image do
  updated false
  hidden_resource false
  title ["61*"]
end
