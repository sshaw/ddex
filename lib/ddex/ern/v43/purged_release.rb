#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v43/detailed_resource_contributor"
require "ddex/ern/v43/release_id"
require "ddex/ern/v43/title"

module DDEX module ERN module V43  # :nodoc: all

class DDEX::ERN::V43::PurgedRelease < Element
  include ROXML


  xml_name "PurgedRelease"

      xml_accessor :release_id, :as => DDEX::ERN::V43::ReleaseId, :from => "ReleaseId", :required => false
      xml_accessor :titles, :as => [DDEX::ERN::V43::Title], :from => "Title", :required => false
      xml_accessor :contributors, :as => [DDEX::ERN::V43::DetailedResourceContributor], :from => "Contributor", :required => false


  

end

end end end
