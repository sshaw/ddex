require "roxml"
require "ddex/element"

require "ddex/ern/v36/name"
require "ddex/ern/v36/party_id"
require "ddex/ern/v36/party_name"

module DDEX module ERN module V36

class MessagingParty < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "MessagingParty"

      
      xml_accessor :party_ids, :as => [DDEX::ERN::V36::PartyId], :from => "PartyId", :required => true

      xml_accessor :party_name, :as => DDEX::ERN::V36::PartyName, :from => "PartyName", :required => false

      xml_accessor :trading_name, :as => DDEX::ERN::V36::Name, :from => "TradingName", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
