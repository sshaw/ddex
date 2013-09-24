require "roxml"
require "ddex/element"

require "ddex/ern/v36/party_descriptor"

module DDEX module ERN module V36

class SocietyAffiliation < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "SocietyAffiliation"

      
      xml_accessor :excluded_territory_codes, :as => [], :from => "ExcludedTerritoryCode", :required => false

      
      xml_accessor :territory_codes, :as => [], :from => "TerritoryCode", :required => false

      xml_accessor :music_rights_society, :as => DDEX::ERN::V36::PartyDescriptor, :from => "MusicRightsSociety", :required => true



  
end

end end end
