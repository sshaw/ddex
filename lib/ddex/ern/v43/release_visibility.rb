#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v43/current_territory_code"

module DDEX module ERN module V43  # :nodoc: all

class DDEX::ERN::V43::ReleaseVisibility < Element
  include ROXML


  xml_name "ReleaseVisibility"

      xml_accessor :visibility_reference, :from => "VisibilityReference", :required => true
      xml_accessor :excluded_territory_codes, :as => [DDEX::ERN::V43::CurrentTerritoryCode], :from => "ExcludedTerritoryCode", :required => false
      xml_accessor :territory_codes, :as => [DDEX::ERN::V43::CurrentTerritoryCode], :from => "TerritoryCode", :required => false
      xml_accessor :release_display_start_date_time, :as => DateTime, :from => "ReleaseDisplayStartDateTime", :required => false
      xml_accessor :cover_art_preview_start_date_time, :as => DateTime, :from => "CoverArtPreviewStartDateTime", :required => false
      xml_accessor :full_track_listing_preview_start_date_time, :as => DateTime, :from => "FullTrackListingPreviewStartDateTime", :required => false
      xml_accessor :clip_preview_start_date_time, :as => DateTime, :from => "ClipPreviewStartDateTime", :required => false


  
      xml_accessor :do_not_display_dates?, :from => "@DoNotDisplayDates", :required => false
    
  

end

end end end
