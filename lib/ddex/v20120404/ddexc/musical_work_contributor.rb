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

      
      xml_accessor :party_names, :as => [], :from => "PartyName", :required => false

      xml_accessor :party_id, :from => "PartyId", :required => false

      
      xml_accessor :musical_work_contributor_roles, :as => [], :from => "MusicalWorkContributorRole", :required => false

      
      xml_accessor :society_affiliations, :as => [], :from => "SocietyAffiliation", :required => false



  
      xml_accessor :sequence_number, :from => "@SequenceNumber" 
    
  
end

end end end
