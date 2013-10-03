require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/party_descriptor"

module DDEX module V20120404 module DDEXC

class SocietyAffiliation < Element
  include ROXML

      
    
  
  xml_name "SocietyAffiliation"

      
      xml_accessor :excluded_territory_codes, :as => [], :from => "ExcludedTerritoryCode", :required => false

      
      xml_accessor :territory_codes, :as => [], :from => "TerritoryCode", :required => false

      xml_accessor :music_rights_society, :as => DDEX::V20120404::DDEXC::PartyDescriptor, :from => "MusicRightsSociety", :required => true



  
end

end end end
