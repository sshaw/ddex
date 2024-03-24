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
require "ddex/ern/v43/av_rating"
require "ddex/ern/v43/character"
require "ddex/ern/v43/contributor"
require "ddex/ern/v43/courtesy_line_with_default"
require "ddex/ern/v43/display_artist"
require "ddex/ern/v43/display_artist_name_with_default"
require "ddex/ern/v43/display_credits"
require "ddex/ern/v43/display_title"
require "ddex/ern/v43/display_title_text"
require "ddex/ern/v43/event_date_without_flags"
require "ddex/ern/v43/fulfillment_date_with_territory"
require "ddex/ern/v43/language"
require "ddex/ern/v43/musical_work_id"
require "ddex/ern/v43/parental_warning_type_with_territory"
require "ddex/ern/v43/reason"
require "ddex/ern/v43/recording_format"
require "ddex/ern/v43/related_release"
require "ddex/ern/v43/related_resource"
require "ddex/ern/v43/resource_contained_resource_reference_list"
require "ddex/ern/v43/resource_rights_controller"
require "ddex/ern/v43/version_type"
require "ddex/ern/v43/video_edition"
require "ddex/ern/v43/video_type"
require "ddex/ern/v43/work_rights_controller"

module DDEX module ERN module V43  # :nodoc: all

class DDEX::ERN::V43::Video < Element
  include ROXML


  xml_name "Video"

      xml_accessor :resource_reference, :from => "ResourceReference", :required => true
      xml_accessor :type, :as => DDEX::ERN::V43::VideoType, :from => "Type", :required => true
      xml_accessor :video_editions, :as => [DDEX::ERN::V43::VideoEdition], :from => "VideoEdition", :required => true
      xml_accessor :recording_formats, :as => [DDEX::ERN::V43::RecordingFormat], :from => "RecordingFormat", :required => false
      xml_accessor :work_ids, :as => [DDEX::ERN::V43::MusicalWorkId], :from => "WorkId", :required => false
      xml_accessor :display_title_texts, :as => [DDEX::ERN::V43::DisplayTitleText], :from => "DisplayTitleText", :required => true
      xml_accessor :display_titles, :as => [DDEX::ERN::V43::DisplayTitle], :from => "DisplayTitle", :required => true
      xml_accessor :additional_titles, :as => [DDEX::ERN::V43::AdditionalTitle], :from => "AdditionalTitle", :required => false
      xml_accessor :version_types, :as => [DDEX::ERN::V43::VersionType], :from => "VersionType", :required => false
      xml_accessor :display_artist_names, :as => [DDEX::ERN::V43::DisplayArtistNameWithDefault], :from => "DisplayArtistName", :required => true
      xml_accessor :display_artists, :as => [DDEX::ERN::V43::DisplayArtist], :from => "DisplayArtist", :required => true
      xml_accessor :contributors, :as => [DDEX::ERN::V43::Contributor], :from => "Contributor", :required => false
      xml_accessor :characters, :as => [DDEX::ERN::V43::Character], :from => "Character", :required => false
      xml_accessor :resource_rights_controllers, :as => [DDEX::ERN::V43::ResourceRightsController], :from => "ResourceRightsController", :required => false
      xml_accessor :work_rights_controllers, :as => [DDEX::ERN::V43::WorkRightsController], :from => "WorkRightsController", :required => false
      xml_accessor :courtesy_lines, :as => [DDEX::ERN::V43::CourtesyLineWithDefault], :from => "CourtesyLine", :required => false
      xml_accessor :duration, :from => "Duration", :required => true
      xml_accessor :creation_date, :as => DDEX::ERN::V43::EventDateWithoutFlags, :from => "CreationDate", :required => false
      xml_accessor :mastered_date, :as => DDEX::ERN::V43::EventDateWithoutFlags, :from => "MasteredDate", :required => false
      xml_accessor :remastered_dates, :as => [DDEX::ERN::V43::EventDateWithoutFlags], :from => "RemasteredDate", :required => false
      xml_accessor :first_publication_dates, :as => [DDEX::ERN::V43::FulfillmentDateWithTerritory], :from => "FirstPublicationDate", :required => false
      xml_accessor :parental_warning_types, :as => [DDEX::ERN::V43::ParentalWarningTypeWithTerritory], :from => "ParentalWarningType", :required => true
      xml_accessor :av_ratings, :as => [DDEX::ERN::V43::AvRating], :from => "AvRating", :required => false
      xml_accessor :related_releases, :as => [DDEX::ERN::V43::RelatedRelease], :from => "RelatedRelease", :required => false
      xml_accessor :related_resources, :as => [DDEX::ERN::V43::RelatedResource], :from => "RelatedResource", :required => false
      xml_accessor :composite_musical_work_type, :from => "CompositeMusicalWorkType", :required => false
      xml_accessor :reason_for_cue_sheet_absence, :as => DDEX::ERN::V43::Reason, :from => "ReasonForCueSheetAbsence", :required => false
      xml_accessor :video_cue_sheet_references, :as => [], :from => "VideoCueSheetReference", :required => false
      xml_accessor :cover?, :from => "IsCover", :required => false
      xml_accessor :has_vocal_performance?, :from => "HasVocalPerformance", :required => false
      xml_accessor :has_foreground_vocal_performance?, :from => "HasForegroundVocalPerformance", :required => false
      xml_accessor :instrumental?, :from => "IsInstrumental", :required => false
      xml_accessor :contains_hidden_content?, :from => "ContainsHiddenContent", :required => false
      xml_accessor :remastered?, :from => "IsRemastered", :required => false
      xml_accessor :display_credits, :as => [DDEX::ERN::V43::DisplayCredits], :from => "DisplayCredits", :required => false
      xml_accessor :language_of_performances, :as => [DDEX::ERN::V43::Language], :from => "LanguageOfPerformance", :required => false
      xml_accessor :language_of_dubbings, :as => [], :from => "LanguageOfDubbing", :required => false
      xml_accessor :sub_title_languages, :as => [], :from => "SubTitleLanguage", :required => false
      xml_accessor :resource_contained_resource_reference_list, :as => DDEX::ERN::V43::ResourceContainedResourceReferenceList, :from => "ResourceContainedResourceReferenceList", :required => false
      xml_accessor :ragas, :as => [], :from => "Raga", :required => false
      xml_accessor :talas, :as => [], :from => "Tala", :required => false
      xml_accessor :deities, :as => [], :from => "Deity", :required => false
      xml_accessor :video_chapter_references, :as => [], :from => "VideoChapterReference", :required => false


  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
      xml_accessor :supplemental?, :from => "@IsSupplemental", :required => false
    
  
      xml_accessor :apply_classical_profile_variant?, :from => "@ApplyClassicalProfileVariant", :required => false
    
  

end

end end end