require "ddex/party"
require "ddex/musical_work_contributor_role"
require "ddex/sequence_number"

module DDEX
  class IndirectResourceContributor < Element
    include SequenceNumber
    extend Party

    party_names
    party_id

    xml_accessor :indirect_resource_contributor_roles, :as => [MusicalWorkContributorRole]
  end
end
