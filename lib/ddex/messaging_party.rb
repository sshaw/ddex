require "ddex/name"
require "ddex/party"

module DDEX
  class MessagingParty < Element
    extend Party

    party_id
    party_name

    xml_accessor :trading_name, :as => Name
  end
end
