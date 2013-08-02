require "ddex/party"
require "ddex/resource_contributor_role"
require "ddex/sequence_number"

module DDEX
  class ResourceContributor < Element
    include Party
    include SequenceNumber

    xml_accessor :resource_contributor_roles, :as => [ResourceContributorRole]
  end
end
