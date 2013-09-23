Fabricator :image_details_by_territory, :class_name => DDEX::V20120404::DDEXC::ImageDetailsByTerritory do
  language_and_script_code "en-US"
  territory_codes ["US"]
  excluded_territory_codes ["CA"]
  resource_contributors(:count => 1) { Fabricate(:resource_contributor) }
  indirect_resource_contributors(:count => 1) { Fabricate(:indirect_resource_contributor) }
  clines(:count => 1) { Fabricate(:cline) }
  description
  courtesy_line
  original_resource_release_date
end

Fabricator :ern_image_details_by_territory, :from => :image_details_by_territory, :class_name => DDEX::ERN::V341::ImageDetailsByTerritory do
  fulfillment_date
  keywords(:count => 1) { Fabricate(:keywords) }
  synopsis
  genres(:count => 1) { Fabricate(:genre) }
  parental_warning_types(:count => 1) { Fabricate(:parental_warning_type) }
  technical_image_details(:count => 1) { Fabricate(:technical_image_details) }
end
