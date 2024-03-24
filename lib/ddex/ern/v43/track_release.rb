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
require "ddex/ern/v43/display_title"
require "ddex/ern/v43/display_title_text"
require "ddex/ern/v43/genre_with_territory"
require "ddex/ern/v43/keywords_with_territory"
require "ddex/ern/v43/linked_release_resource_reference"
require "ddex/ern/v43/marketing_comment"
require "ddex/ern/v43/related_release"
require "ddex/ern/v43/related_resource"
require "ddex/ern/v43/release_id"
require "ddex/ern/v43/release_label_reference_with_party"
require "ddex/ern/v43/synopsis_with_territory"

module DDEX module ERN module V43  # :nodoc: all

class DDEX::ERN::V43::TrackRelease < Element
  include ROXML


  xml_name "TrackRelease"

      xml_accessor :release_reference, :from => "ReleaseReference", :required => true
      xml_accessor :release_id, :as => DDEX::ERN::V43::ReleaseId, :from => "ReleaseId", :required => true
      xml_accessor :display_title_texts, :as => [DDEX::ERN::V43::DisplayTitleText], :from => "DisplayTitleText", :required => false
      xml_accessor :display_titles, :as => [DDEX::ERN::V43::DisplayTitle], :from => "DisplayTitle", :required => false
      xml_accessor :additional_titles, :as => [DDEX::ERN::V43::AdditionalTitle], :from => "AdditionalTitle", :required => false
      xml_accessor :release_resource_reference, :from => "ReleaseResourceReference", :required => true
      xml_accessor :linked_release_resource_references, :as => [DDEX::ERN::V43::LinkedReleaseResourceReference], :from => "LinkedReleaseResourceReference", :required => false
      xml_accessor :release_label_references, :as => [DDEX::ERN::V43::ReleaseLabelReferenceWithParty], :from => "ReleaseLabelReference", :required => true
      xml_accessor :genres, :as => [DDEX::ERN::V43::GenreWithTerritory], :from => "Genre", :required => true
      xml_accessor :release_visibility_references, :as => [], :from => "ReleaseVisibilityReference", :required => false
      xml_accessor :related_releases, :as => [DDEX::ERN::V43::RelatedRelease], :from => "RelatedRelease", :required => false
      xml_accessor :related_resources, :as => [DDEX::ERN::V43::RelatedResource], :from => "RelatedResource", :required => false
      xml_accessor :target_url, :from => "TargetURL", :required => false
      xml_accessor :keywords, :as => [DDEX::ERN::V43::KeywordsWithTerritory], :from => "Keywords", :required => false
      xml_accessor :synopsises, :as => [DDEX::ERN::V43::SynopsisWithTerritory], :from => "Synopsis", :required => false
      xml_accessor :marketing_comments, :as => [DDEX::ERN::V43::MarketingComment], :from => "MarketingComment", :required => false


  
      xml_accessor :main_release?, :from => "@IsMainRelease", :required => false
    
  

end

end end end