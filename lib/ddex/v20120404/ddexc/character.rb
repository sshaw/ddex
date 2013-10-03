require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/party_id"
require "ddex/v20120404/ddexc/party_name"
require "ddex/v20120404/ddexc/resource_contributor"

module DDEX module V20120404 module DDEXC

class Character < Element
  include ROXML

      
    
  
  xml_name "Character"

      
      xml_accessor :party_names, :as => [DDEX::V20120404::DDEXC::PartyName], :from => "PartyName", :required => false

      xml_accessor :party_id, :as => DDEX::V20120404::DDEXC::PartyId, :from => "PartyId", :required => false

      xml_accessor :resource_contributor, :as => DDEX::V20120404::DDEXC::ResourceContributor, :from => "ResourceContributor", :required => false



  

      xml_accessor :sequence_number, :as => Integer, :from => "@SequenceNumber", :required => false
    
  
end

end end end
