#
# Auto-generated by jaxb2ruby v0.0.1 on 2018-03-01 07:54:48 +0000
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v37_d2/party_id"
require "ddex/ern/v37_d2/party_name"

module DDEX module ERN module V37D2  # :nodoc: all

class AdministratingRecordCompany < Element
  include ROXML


  xml_name "AdministratingRecordCompany"

      xml_accessor :party_names, :as => [PartyName], :from => "PartyName", :required => false
      xml_accessor :party_ids, :as => [PartyId], :from => "PartyId", :required => false


  
      xml_accessor :namespace, :from => "@Namespace", :required => false
    
  
      xml_accessor :user_defined_value, :from => "@UserDefinedValue", :required => false
    
  
      xml_accessor :role, :from => "@Role", :required => true
    
  

end

end end end
