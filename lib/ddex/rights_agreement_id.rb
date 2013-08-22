require "ddex/proprietary_id"

module DDEX
  class RightsAgreementId < Element
    xml_accessor :mwli, :from => "MWLI", :as => []
    xml_accessor :proprietary_ids, :as => [ProprietaryId]
  end
end
