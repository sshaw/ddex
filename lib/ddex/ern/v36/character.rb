require "roxml"
require "ddex/element"

require "ddex/ern/v36/party_id"
require "ddex/ern/v36/party_name"
require "ddex/ern/v36/resource_contributor"

module DDEX module ERN module V36

class Character < Element
  include ROXML

      
    
  
  xml_name "Character"

      
      xml_accessor :party_names, :as => [DDEX::ERN::V36::PartyName], :from => "PartyName", :required => false

      
      xml_accessor :party_ids, :as => [DDEX::ERN::V36::PartyId], :from => "PartyId", :required => false

      xml_accessor :resource_contributor, :as => DDEX::ERN::V36::ResourceContributor, :from => "ResourceContributor", :required => false



  

      xml_accessor :sequence_number, :as => Integer, :from => "@SequenceNumber", :required => false
    
  
end

end end end
