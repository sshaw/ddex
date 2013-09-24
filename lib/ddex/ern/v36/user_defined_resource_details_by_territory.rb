require "roxml"
require "ddex/element"

require "ddex/ern/v36/c_line"
require "ddex/ern/v36/event_date"
require "ddex/ern/v36/fulfillment_date"
require "ddex/ern/v36/genre"
require "ddex/ern/v36/indirect_resource_contributor"
require "ddex/ern/v36/keywords"
require "ddex/ern/v36/p_line"
require "ddex/ern/v36/parental_warning_type"
require "ddex/ern/v36/resource_contributor"
require "ddex/ern/v36/synopsis"
require "ddex/ern/v36/technical_user_defined_resource_details"
require "ddex/ern/v36/user_defined_value"

module DDEX module ERN module V36

class UserDefinedResourceDetailsByTerritory < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "UserDefinedResourceDetailsByTerritory"

      
      xml_accessor :excluded_territory_codes, :as => [], :from => "ExcludedTerritoryCode", :required => false

      
      xml_accessor :territory_codes, :as => [], :from => "TerritoryCode", :required => false

      
      xml_accessor :resource_contributors, :as => [DDEX::ERN::V36::ResourceContributor], :from => "ResourceContributor", :required => false

      
      xml_accessor :indirect_resource_contributors, :as => [DDEX::ERN::V36::IndirectResourceContributor], :from => "IndirectResourceContributor", :required => false

      
      xml_accessor :user_defined_values, :as => [DDEX::ERN::V36::UserDefinedValue], :from => "UserDefinedValue", :required => false

      
      xml_accessor :p_lines, :as => [DDEX::ERN::V36::PLine], :from => "PLine", :required => false

      
      xml_accessor :c_lines, :as => [DDEX::ERN::V36::CLine], :from => "CLine", :required => false

      xml_accessor :original_resource_release_date, :as => DDEX::ERN::V36::EventDate, :from => "OriginalResourceReleaseDate", :required => false

      xml_accessor :fulfillment_date, :as => DDEX::ERN::V36::FulfillmentDate, :from => "FulfillmentDate", :required => false

      
      xml_accessor :keywords, :as => [DDEX::ERN::V36::Keywords], :from => "Keywords", :required => false

      xml_accessor :synopsis, :as => DDEX::ERN::V36::Synopsis, :from => "Synopsis", :required => false

      
      xml_accessor :genres, :as => [DDEX::ERN::V36::Genre], :from => "Genre", :required => false

      
      xml_accessor :parental_warning_types, :as => [DDEX::ERN::V36::ParentalWarningType], :from => "ParentalWarningType", :required => false

      
      xml_accessor :technical_user_defined_resource_details, :as => [DDEX::ERN::V36::TechnicalUserDefinedResourceDetails], :from => "TechnicalUserDefinedResourceDetails", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
