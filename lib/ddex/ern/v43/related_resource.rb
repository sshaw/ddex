#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v43/resource_id"
require "ddex/ern/v43/timing"

module DDEX module ERN module V43  # :nodoc: all

class DDEX::ERN::V43::RelatedResource < Element
  include ROXML


  xml_name "RelatedResource"

      xml_accessor :resource_relationship_type, :from => "ResourceRelationshipType", :required => true
      xml_accessor :resource_id, :as => DDEX::ERN::V43::ResourceId, :from => "ResourceId", :required => false
      xml_accessor :resource_related_resource_reference, :from => "ResourceRelatedResourceReference", :required => false
      xml_accessor :timings, :as => [DDEX::ERN::V43::Timing], :from => "Timing", :required => false


  

end

end end end
