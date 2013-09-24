require "roxml"
require "ddex/element"

require "ddex/ern/v36/administrating_record_company"
require "ddex/ern/v36/artist"
require "ddex/ern/v36/release_id"
require "ddex/ern/v36/rights_agreement_id"
require "ddex/ern/v36/title"

module DDEX module ERN module V36

class HostSoundCarrier < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "HostSoundCarrier"

      
      xml_accessor :release_ids, :as => [DDEX::ERN::V36::ReleaseId], :from => "ReleaseId", :required => false

      xml_accessor :rights_agreement_id, :as => DDEX::ERN::V36::RightsAgreementId, :from => "RightsAgreementId", :required => false

      
      xml_accessor :titles, :as => [DDEX::ERN::V36::Title], :from => "Title", :required => false

      
      xml_accessor :display_artists, :as => [DDEX::ERN::V36::Artist], :from => "DisplayArtist", :required => false

      
      xml_accessor :administrating_record_companies, :as => [DDEX::ERN::V36::AdministratingRecordCompany], :from => "AdministratingRecordCompany", :required => false

      xml_accessor :track_number, :from => "TrackNumber", :required => false

      xml_accessor :volume_number_in_set, :from => "VolumeNumberInSet", :required => false



  
end

end end end
