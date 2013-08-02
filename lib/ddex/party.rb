require "ddex/party_id"
require "ddex/party_name"

module DDEX
  module Party
    def self.included(klass)
      klass.class_eval do
        xml_accessor :party_id, :as => PartyId
        xml_accessor :party_names, :as => [PartyName]
      end
    end
  end
end
