#
# Auto-generated by jaxb2ruby v0.0.1 on 2020-12-03 10:00:55 -0500
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"


module DDEX module ERN module V42  # :nodoc: all

class DDEX::ERN::V42::ReleaseVisibility < Element
  include ROXML


  xml_name "ReleaseVisibility"

      xml_accessor :visibility_reference, :from => "VisibilityReference", :required => true
      xml_accessor :release_display_start_date_time, :as => DateTime, :from => "ReleaseDisplayStartDateTime", :required => false
      xml_accessor :cover_art_preview_start_date_time, :as => DateTime, :from => "CoverArtPreviewStartDateTime", :required => false
      xml_accessor :full_track_listing_preview_start_date_time, :as => DateTime, :from => "FullTrackListingPreviewStartDateTime", :required => false


  

end

end end end
