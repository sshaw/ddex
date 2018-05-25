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
require "ddex/v20110120/ddexc/related_release"
require "ddex/v20110120/ddexc/release_summary_details_by_territory"
require "ddex/v20110120/ddexc/release_type"
require "ddex/v20110120/ddexc/title"

module DDEX module V20110120 module DDEXC  # :nodoc: all

class DDEX::V20110120::DDEXC::ReleaseDetailsByTerritory < DDEX::V20110120::DDEXC::ReleaseSummaryDetailsByTerritory
  include ROXML


  xml_name "ReleaseDetailsByTerritory"

      xml_accessor :titles, :as => [DDEX::V20110120::DDEXC::Title], :from => "Title", :required => false
      xml_accessor :display_artists, :as => [DDEX::V20110120::DDEXC::Artist], :from => "DisplayArtist", :required => true
      xml_accessor :multi_artist_compilation?, :from => "IsMultiArtistCompilation", :required => false
      xml_accessor :administrating_record_companies, :as => [DDEX::V20110120::DDEXC::AdministratingRecordCompany], :from => "AdministratingRecordCompany", :required => false
      xml_accessor :release_types, :as => [DDEX::V20110120::DDEXC::ReleaseType], :from => "ReleaseType", :required => false
      xml_accessor :related_releases, :as => [DDEX::V20110120::DDEXC::RelatedRelease], :from => "RelatedRelease", :required => false


  

end

end end end