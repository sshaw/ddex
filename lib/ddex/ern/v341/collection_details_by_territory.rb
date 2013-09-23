require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/character"
require "ddex/v20120404/ddexc/resource_contributor"
require "ddex/v20120404/ddexc/title"

module DDEX module ERN module V341

class CollectionDetailsByTerritory < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "CollectionDetailsByTerritory"

      
      xml_accessor :excluded_territory_codes, :as => [], :from => "ExcludedTerritoryCode", :required => false

      
      xml_accessor :territory_codes, :as => [], :from => "TerritoryCode", :required => false

      
      xml_accessor :titles, :as => [DDEX::V20120404::DDEXC::Title], :from => "Title", :required => false

      
      xml_accessor :contributors, :as => [DDEX::V20120404::DDEXC::ResourceContributor], :from => "Contributor", :required => false

      xml_accessor :complete?, :from => "IsComplete", :required => false

      
      xml_accessor :characters, :as => [DDEX::V20120404::DDEXC::Character], :from => "Character", :required => false



  
end

end end end
