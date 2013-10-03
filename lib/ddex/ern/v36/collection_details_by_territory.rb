require "roxml"
require "ddex/element"

require "ddex/ern/v36/character"
require "ddex/ern/v36/resource_contributor"
require "ddex/ern/v36/title"

module DDEX module ERN module V36

class CollectionDetailsByTerritory < Element
  include ROXML

      
    
  
  xml_name "CollectionDetailsByTerritory"

      
      xml_accessor :excluded_territory_codes, :as => [], :from => "ExcludedTerritoryCode", :required => false

      
      xml_accessor :territory_codes, :as => [], :from => "TerritoryCode", :required => false

      
      xml_accessor :titles, :as => [DDEX::ERN::V36::Title], :from => "Title", :required => false

      
      xml_accessor :contributors, :as => [DDEX::ERN::V36::ResourceContributor], :from => "Contributor", :required => false

      xml_accessor :complete?, :from => "IsComplete", :required => false

      
      xml_accessor :characters, :as => [DDEX::ERN::V36::Character], :from => "Character", :required => false



  
end

end end end
