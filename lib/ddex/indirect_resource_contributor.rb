require "ddex/party"
require "ddex/musical_work_contributor_role"
require "ddex/sequence_number"

module DDEX
  class IndirectResourceContributor < Element
    include Party
    include SequenceNumber

    xml_accessor :indirect_resource_contributor_role, :as => [MusicalWorkContributorRole]
  end
end
