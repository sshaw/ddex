require "ddex/party"
require "ddex/resource_contributor_role"
require "ddex/sequence_number"

module DDEX
  class ResourceContributor < Element
    extend Party
    include SequenceNumber

    party_names
    party_id
    
    xml_accessor :resource_contributor_roles, :as => [ResourceContributorRole]
  end
end
