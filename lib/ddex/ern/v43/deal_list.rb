#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v43/release_deal"
require "ddex/ern/v43/release_visibility"
require "ddex/ern/v43/track_release_visibility"

module DDEX module ERN module V43  # :nodoc: all

class DDEX::ERN::V43::DealList < Element
  include ROXML


  xml_name "DealList"

      xml_accessor :release_deals, :as => [DDEX::ERN::V43::ReleaseDeal], :from => "ReleaseDeal", :required => true
      xml_accessor :release_visibilities, :as => [DDEX::ERN::V43::ReleaseVisibility], :from => "ReleaseVisibility", :required => false
      xml_accessor :track_release_visibilities, :as => [DDEX::ERN::V43::TrackReleaseVisibility], :from => "TrackReleaseVisibility", :required => false


  

end

end end end