#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v383/detailed_resource_contributor"
require "ddex/ern/v383/party_id"
require "ddex/ern/v383/party_name"

module DDEX module ERN module V383  # :nodoc: all

class DDEX::ERN::V383::Character < Element
  include ROXML


  xml_name "Character"

      xml_accessor :party_names, :as => [DDEX::ERN::V383::PartyName], :from => "PartyName", :required => false
      xml_accessor :party_ids, :as => [DDEX::ERN::V383::PartyId], :from => "PartyId", :required => false
      xml_accessor :resource_contributor, :as => DDEX::ERN::V383::DetailedResourceContributor, :from => "ResourceContributor", :required => false


  

      xml_accessor :sequence_number, :as => Integer, :from => "@SequenceNumber", :required => false
    
  

end

end end end
