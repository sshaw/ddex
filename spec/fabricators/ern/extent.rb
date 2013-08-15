Fabricator :image_width, :class_name => DDEX::ERN::ImageWidth do
  unit_of_measure "in"
  value "69"
end

Fabricator :image_height, :from => :image_width, :class_name => DDEX::ERN::ImageHeight
