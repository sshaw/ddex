require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/name"
require "ddex/v20120404/ddexc/party_id"
require "ddex/v20120404/ddexc/party_name"

module DDEX module V20120404 module DDEXC

class MessagingParty < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "MessagingParty"

      xml_accessor :party_id, :from => "PartyId", :required => true

      xml_accessor :party_name, :from => "PartyName", :required => false

      xml_accessor :trading_name, :from => "TradingName", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
