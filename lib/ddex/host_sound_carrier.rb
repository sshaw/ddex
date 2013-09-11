require "ddex/artist"
require "ddex/administrating_record_company"
require "ddex/release_id"
require "ddex/rights_agreement_id"
require "ddex/title"

module DDEX
  class HostSoundCarrier < Element
    xml_accessor :release_ids, :as => [ReleaseId]
    xml_accessor :rights_agreement_id, :as => RightsAgreementId
    xml_accessor :titles, :as => [Title]
    xml_accessor :display_artists, :as => [Artist]
    xml_accessor :administrating_record_companies, :as => [AdministratingRecordCompany]
    xml_accessor :track_number
    xml_accessor :volume_number_in_set
  end
end

