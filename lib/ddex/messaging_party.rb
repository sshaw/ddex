require "ddex/party_name"

module DDEX
  class MessagingParty < Element    
    xml_accessor :party_id, :from => "PartyId"
    xml_accessor :trading_name, :from => "TradingName"
    xml_accessor :party_name, :from => "PartyName", :as => PartyName
  end
end
