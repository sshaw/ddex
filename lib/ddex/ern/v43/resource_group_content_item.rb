#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v43/linked_release_resource_reference"

module DDEX module ERN module V43  # :nodoc: all

class DDEX::ERN::V43::ResourceGroupContentItem < Element
  include ROXML


  xml_name "ResourceGroupContentItem"

      xml_accessor :sequence_number, :as => Integer, :from => "SequenceNumber", :required => false
      xml_accessor :display_sequence, :from => "DisplaySequence", :required => false
      xml_accessor :no_display_sequence?, :from => "NoDisplaySequence", :required => false
      xml_accessor :release_resource_reference, :from => "ReleaseResourceReference", :required => true
      xml_accessor :linked_release_resource_references, :as => [DDEX::ERN::V43::LinkedReleaseResourceReference], :from => "LinkedReleaseResourceReference", :required => false
      xml_accessor :bonus_resource?, :from => "IsBonusResource", :required => false
      xml_accessor :instant_gratification_resource?, :from => "IsInstantGratificationResource", :required => false
      xml_accessor :pre_order_incentive_resource?, :from => "IsPreOrderIncentiveResource", :required => false


  

end

end end end
