require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/administrating_record_company"
require "ddex/v20120404/ddexc/artist"
require "ddex/v20120404/ddexc/release_id"
require "ddex/v20120404/ddexc/rights_agreement_id"
require "ddex/v20120404/ddexc/title"

module DDEX module V20120404 module DDEXC

class HostSoundCarrier < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "HostSoundCarrier"

      
      xml_accessor :release_ids, :as => [], :from => "ReleaseId", :required => false

      xml_accessor :rights_agreement_id, :from => "RightsAgreementId", :required => false

      
      xml_accessor :titles, :as => [], :from => "Title", :required => false

      
      xml_accessor :display_artists, :as => [], :from => "DisplayArtist", :required => false

      
      xml_accessor :administrating_record_companies, :as => [], :from => "AdministratingRecordCompany", :required => false

      xml_accessor :track_number, :from => "TrackNumber", :required => false

      xml_accessor :volume_number_in_set, :from => "VolumeNumberInSet", :required => false



  
end

end end end
