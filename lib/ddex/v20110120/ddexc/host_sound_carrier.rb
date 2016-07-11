#
# Auto-generated by jaxb2ruby v0.0.1 on 2016-07-11 13:50:27 +0100
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/v20110120/ddexc/administrating_record_company"
require "ddex/v20110120/ddexc/artist"
require "ddex/v20110120/ddexc/release_id"
require "ddex/v20110120/ddexc/rights_agreement_id"
require "ddex/v20110120/ddexc/title"

module DDEX module V20110120 module DDEXC  # :nodoc: all

class DDEX::V20110120::DDEXC::HostSoundCarrier < Element
  include ROXML


  xml_name "HostSoundCarrier"

      xml_accessor :release_ids, :as => [DDEX::V20110120::DDEXC::ReleaseId], :from => "ReleaseId", :required => false
      xml_accessor :rights_agreement_id, :as => DDEX::V20110120::DDEXC::RightsAgreementId, :from => "RightsAgreementId", :required => false
      xml_accessor :titles, :as => [DDEX::V20110120::DDEXC::Title], :from => "Title", :required => false
      xml_accessor :display_artists, :as => [DDEX::V20110120::DDEXC::Artist], :from => "DisplayArtist", :required => false
      xml_accessor :administrating_record_companies, :as => [DDEX::V20110120::DDEXC::AdministratingRecordCompany], :from => "AdministratingRecordCompany", :required => false
      xml_accessor :track_number, :from => "TrackNumber", :required => false
      xml_accessor :volume_number_in_set, :from => "VolumeNumberInSet", :required => false


  

end

end end end
