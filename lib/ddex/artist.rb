require "ddex/artist_role"
require "ddex/party"
require "ddex/sequence_number"

module DDEX
  class Artist < Element
    include SequenceNumber
    extend Party

    party_names
    party_id

    xml_accessor :artist_roles, :as => [ArtistRole]
  end
end
