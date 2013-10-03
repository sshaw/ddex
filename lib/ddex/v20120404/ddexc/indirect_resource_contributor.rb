require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/musical_work_contributor_role"
require "ddex/v20120404/ddexc/party_id"
require "ddex/v20120404/ddexc/party_name"

module DDEX module V20120404 module DDEXC

class IndirectResourceContributor < Element
  include ROXML

      
    
  
  xml_name "IndirectResourceContributor"

      
      xml_accessor :party_names, :as => [DDEX::V20120404::DDEXC::PartyName], :from => "PartyName", :required => false

      xml_accessor :party_id, :as => DDEX::V20120404::DDEXC::PartyId, :from => "PartyId", :required => false

      
      xml_accessor :indirect_resource_contributor_roles, :as => [DDEX::V20120404::DDEXC::MusicalWorkContributorRole], :from => "IndirectResourceContributorRole", :required => false



  

      xml_accessor :sequence_number, :as => Integer, :from => "@SequenceNumber", :required => false
    
  
end

end end end
