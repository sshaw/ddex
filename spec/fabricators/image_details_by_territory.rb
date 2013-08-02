Fabricator :image_details_by_territory, :class_name => DDEX::ImageDetailsByTerritory do
  language_and_script_code "en-US"
  territory_codes ["US"]
  excluded_territory_codes ["CA"]
  resource_contributors(:count => 1) { Fabricate(:resource_contributor) }
  indirect_resource_contributors(:count => 1) { Fabricate(:indirect_resource_contributor) }
  clines(:count => 1) { Fabricate(:cline) }
  description
  courtesy_line
  original_resource_release_date { Fabricate(:event_date) }
end
