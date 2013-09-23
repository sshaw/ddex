require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/musical_work_contributor_role"
require "ddex/v20120404/ddexc/party_id"
require "ddex/v20120404/ddexc/party_name"

module DDEX module V20120404 module DDEXC

class IndirectResourceContributor < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "IndirectResourceContributor"

      
      xml_accessor :party_names, :as => [], :from => "PartyName", :required => false

      xml_accessor :party_id, :from => "PartyId", :required => false

      
      xml_accessor :indirect_resource_contributor_roles, :as => [], :from => "IndirectResourceContributorRole", :required => false



  
      xml_accessor :sequence_number, :from => "@SequenceNumber" 
    
  
end

end end end
