require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/artist_role"
require "ddex/v20120404/ddexc/party_id"
require "ddex/v20120404/ddexc/party_name"

module DDEX module V20120404 module DDEXC

class Artist < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "Artist"

      
      xml_accessor :party_names, :as => [DDEX::V20120404::DDEXC::PartyName], :from => "PartyName", :required => false

      xml_accessor :party_id, :as => DDEX::V20120404::DDEXC::PartyId, :from => "PartyId", :required => false

      
      xml_accessor :artist_roles, :as => [DDEX::V20120404::DDEXC::ArtistRole], :from => "ArtistRole", :required => false



  

      xml_accessor :sequence_number, :as => Integer, :from => "@SequenceNumber", :required => false
    
  
end

end end end
