#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v43/additional_title"
require "ddex/ern/v43/carrier_type"
require "ddex/ern/v43/display_artist"
require "ddex/ern/v43/display_title"
require "ddex/ern/v43/display_title_text"
require "ddex/ern/v43/linked_release_resource_reference"
require "ddex/ern/v43/release_id"
require "ddex/ern/v43/resource_group_content_item"
require "ddex/ern/v43/resource_sub_group"

module DDEX module ERN module V43  # :nodoc: all

class DDEX::ERN::V43::ResourceGroup < Element
  include ROXML


  xml_name "ResourceGroup"

      xml_accessor :display_title_texts, :as => [DDEX::ERN::V43::DisplayTitleText], :from => "DisplayTitleText", :required => false
      xml_accessor :display_titles, :as => [DDEX::ERN::V43::DisplayTitle], :from => "DisplayTitle", :required => false
      xml_accessor :additional_titles, :as => [DDEX::ERN::V43::AdditionalTitle], :from => "AdditionalTitle", :required => false
      xml_accessor :sequence_number, :as => Integer, :from => "SequenceNumber", :required => false
      xml_accessor :display_sequence, :from => "DisplaySequence", :required => false
      xml_accessor :no_display_sequence?, :from => "NoDisplaySequence", :required => false
      xml_accessor :display_artists, :as => [DDEX::ERN::V43::DisplayArtist], :from => "DisplayArtist", :required => false
      xml_accessor :carrier_types, :as => [DDEX::ERN::V43::CarrierType], :from => "CarrierType", :required => false
      xml_accessor :duration, :from => "Duration", :required => false
      xml_accessor :release_id, :as => DDEX::ERN::V43::ReleaseId, :from => "ReleaseId", :required => false
      xml_accessor :resource_group_release_reference, :from => "ResourceGroupReleaseReference", :required => false
      xml_accessor :resource_groups, :as => [DDEX::ERN::V43::ResourceSubGroup], :from => "ResourceGroup", :required => false
      xml_accessor :resource_group_content_items, :as => [DDEX::ERN::V43::ResourceGroupContentItem], :from => "ResourceGroupContentItem", :required => false
      xml_accessor :linked_release_resource_references, :as => [DDEX::ERN::V43::LinkedReleaseResourceReference], :from => "LinkedReleaseResourceReference", :required => false


  

end

end end end
