#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v383/party_id"
require "ddex/ern/v383/party_name"

module DDEX module ERN module V383  # :nodoc: all

class DDEX::ERN::V383::AdministratingRecordCompany < Element
  include ROXML


  xml_name "AdministratingRecordCompany"

      xml_accessor :party_names, :as => [DDEX::ERN::V383::PartyName], :from => "PartyName", :required => false
      xml_accessor :party_ids, :as => [DDEX::ERN::V383::PartyId], :from => "PartyId", :required => false


  
      xml_accessor :namespace, :from => "@Namespace", :required => false
    
  
      xml_accessor :user_defined_value, :from => "@UserDefinedValue", :required => false
    
  
      xml_accessor :role, :from => "@Role", :required => true
    
  

end

end end end
