#
# Auto-generated by jaxb2ruby v0.0.1 on 2020-12-01 19:23:20 -0500
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v411/additional_title"
require "ddex/ern/v411/display_title"
require "ddex/ern/v411/display_title_text"
require "ddex/ern/v411/genre_with_territory"
require "ddex/ern/v411/keywords_with_territory"
require "ddex/ern/v411/linked_release_resource_reference"
require "ddex/ern/v411/marketing_comment"
require "ddex/ern/v411/release_id"
require "ddex/ern/v411/release_label_reference"
require "ddex/ern/v411/synopsis_with_territory"

module DDEX module ERN module V411  # :nodoc: all

class DDEX::ERN::V411::TrackRelease < Element
  include ROXML


  xml_name "TrackRelease"

      xml_accessor :release_reference, :from => "ReleaseReference", :required => true
      xml_accessor :release_id, :as => DDEX::ERN::V411::ReleaseId, :from => "ReleaseId", :required => true
      xml_accessor :display_title_texts, :as => [DDEX::ERN::V411::DisplayTitleText], :from => "DisplayTitleText", :required => false
      xml_accessor :display_titles, :as => [DDEX::ERN::V411::DisplayTitle], :from => "DisplayTitle", :required => false
      xml_accessor :additional_titles, :as => [DDEX::ERN::V411::AdditionalTitle], :from => "AdditionalTitle", :required => false
      xml_accessor :release_resource_reference, :from => "ReleaseResourceReference", :required => true
      xml_accessor :linked_release_resource_references, :as => [DDEX::ERN::V411::LinkedReleaseResourceReference], :from => "LinkedReleaseResourceReference", :required => false
      xml_accessor :release_label_references, :as => [DDEX::ERN::V411::ReleaseLabelReference], :from => "ReleaseLabelReference", :required => true
      xml_accessor :genres, :as => [DDEX::ERN::V411::GenreWithTerritory], :from => "Genre", :required => true
      xml_accessor :keywords, :as => [DDEX::ERN::V411::KeywordsWithTerritory], :from => "Keywords", :required => false
      xml_accessor :synopsises, :as => [DDEX::ERN::V411::SynopsisWithTerritory], :from => "Synopsis", :required => false
      xml_accessor :marketing_comments, :as => [DDEX::ERN::V411::MarketingComment], :from => "MarketingComment", :required => false


  
      xml_accessor :main_release?, :from => "@IsMainRelease", :required => false
    
  

end

end end end
