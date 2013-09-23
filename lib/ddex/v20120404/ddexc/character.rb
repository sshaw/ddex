require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/party_id"
require "ddex/v20120404/ddexc/party_name"
require "ddex/v20120404/ddexc/resource_contributor"

module DDEX module V20120404 module DDEXC

class Character < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "Character"

      
      xml_accessor :party_names, :as => [], :from => "PartyName", :required => false

      xml_accessor :party_id, :from => "PartyId", :required => false

      xml_accessor :resource_contributor, :from => "ResourceContributor", :required => false



  
      xml_accessor :sequence_number, :from => "@SequenceNumber" 
    
  
end

end end end
