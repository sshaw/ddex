require "ddex/party"
require "ddex/sequence_number"

module DDEX
  class RightsControllerRole < SimpleElement; end

  class RightsController < Element
    include SequenceNumber
    extend Party

    party_id
    party_names

    xml_accessor :rights_controller_roles, :as => [RightsControllerRole]
    xml_accessor :right_share_unknown?, :as => :bool
    xml_accessor :right_share_percentage # yes it's a string
  end
end
