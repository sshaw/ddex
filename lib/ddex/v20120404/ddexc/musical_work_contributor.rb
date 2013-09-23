require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/musical_work_contributor_role"
require "ddex/v20120404/ddexc/party_id"
require "ddex/v20120404/ddexc/party_name"
require "ddex/v20120404/ddexc/society_affiliation"

module DDEX module V20120404 module DDEXC

class MusicalWorkContributor < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "MusicalWorkContributor"

      
      xml_accessor :party_names, :as => [DDEX::V20120404::DDEXC::PartyName], :from => "PartyName", :required => false

      xml_accessor :party_id, :as => DDEX::V20120404::DDEXC::PartyId, :from => "PartyId", :required => false

      
      xml_accessor :musical_work_contributor_roles, :as => [DDEX::V20120404::DDEXC::MusicalWorkContributorRole], :from => "MusicalWorkContributorRole", :required => false

      
      xml_accessor :society_affiliations, :as => [DDEX::V20120404::DDEXC::SocietyAffiliation], :from => "SocietyAffiliation", :required => false



  

      xml_accessor :sequence_number, :as => Integer, :from => "@SequenceNumber", :required => false
    
  
end

end end end
