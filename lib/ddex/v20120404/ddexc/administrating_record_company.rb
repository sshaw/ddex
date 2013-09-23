require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/party_id"
require "ddex/v20120404/ddexc/party_name"

module DDEX module V20120404 module DDEXC

class AdministratingRecordCompany < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "AdministratingRecordCompany"

      
      xml_accessor :party_names, :as => [DDEX::V20120404::DDEXC::PartyName], :from => "PartyName", :required => false

      xml_accessor :party_id, :as => DDEX::V20120404::DDEXC::PartyId, :from => "PartyId", :required => false



  
      xml_accessor :namespace, :from => "@Namespace", :required => false
    
  
      xml_accessor :user_defined_value, :from => "@UserDefinedValue", :required => false
    
  
      xml_accessor :role, :from => "@Role", :required => true
    
  
end

end end end
