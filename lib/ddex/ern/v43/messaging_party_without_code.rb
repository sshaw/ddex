#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v43/party_name_without_code"

module DDEX module ERN module V43  # :nodoc: all

class DDEX::ERN::V43::MessagingPartyWithoutCode < Element
  include ROXML


  xml_name "MessagingPartyWithoutCode"

      xml_accessor :party_id, :from => "PartyId", :required => true
      xml_accessor :party_name, :as => DDEX::ERN::V43::PartyNameWithoutCode, :from => "PartyName", :required => false
      xml_accessor :trading_name, :from => "TradingName", :required => false


  

end

end end end
