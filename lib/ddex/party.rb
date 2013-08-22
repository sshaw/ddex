require "ddex/party_id"
require "ddex/party_name"

module DDEX
  module Party
    def party_id
      xml_accessor :party_id, :as => PartyId
    end

    def party_name
      xml_accessor :party_name, :as => PartyName
    end

    def party_names
      xml_accessor :party_names, :as => [PartyName]
    end
  end
end
