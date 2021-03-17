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

require "ddex/ern/v42/additional_title"
require "ddex/ern/v42/carrier_type"
require "ddex/ern/v42/display_artist"
require "ddex/ern/v42/display_title"
require "ddex/ern/v42/display_title_text"
require "ddex/ern/v42/linked_release_resource_reference"
require "ddex/ern/v42/release_id"
require "ddex/ern/v42/resource_group_content_item"
require "ddex/ern/v42/resource_sub_group"

module DDEX module ERN module V42  # :nodoc: all

class DDEX::ERN::V42::ResourceSubGroup < Element
  include ROXML


  xml_name "ResourceSubGroup"

      xml_accessor :display_title_texts, :as => [DDEX::ERN::V42::DisplayTitleText], :from => "DisplayTitleText", :required => false
      xml_accessor :display_titles, :as => [DDEX::ERN::V42::DisplayTitle], :from => "DisplayTitle", :required => false
      xml_accessor :additional_titles, :as => [DDEX::ERN::V42::AdditionalTitle], :from => "AdditionalTitle", :required => false
      xml_accessor :sequence_number, :as => Integer, :from => "SequenceNumber", :required => false
      xml_accessor :display_sequence, :from => "DisplaySequence", :required => false
      xml_accessor :no_display_sequence?, :from => "NoDisplaySequence", :required => false
      xml_accessor :display_artists, :as => [DDEX::ERN::V42::DisplayArtist], :from => "DisplayArtist", :required => false
      xml_accessor :carrier_types, :as => [DDEX::ERN::V42::CarrierType], :from => "CarrierType", :required => false
      xml_accessor :duration, :from => "Duration", :required => false
      xml_accessor :release_id, :as => DDEX::ERN::V42::ReleaseId, :from => "ReleaseId", :required => false
      xml_accessor :resource_group_release_reference, :from => "ResourceGroupReleaseReference", :required => false
      xml_accessor :resource_groups, :as => [DDEX::ERN::V42::ResourceSubGroup], :from => "ResourceGroup", :required => false
      xml_accessor :resource_group_content_items, :as => [DDEX::ERN::V42::ResourceGroupContentItem], :from => "ResourceGroupContentItem", :required => false
      xml_accessor :linked_release_resource_references, :as => [DDEX::ERN::V42::LinkedReleaseResourceReference], :from => "LinkedReleaseResourceReference", :required => false


  
      xml_accessor :resource_group_type, :from => "@ResourceGroupType", :required => true
    
  

end

end end end
