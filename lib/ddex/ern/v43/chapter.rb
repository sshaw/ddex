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
require "ddex/ern/v43/character"
require "ddex/ern/v43/contributor"
require "ddex/ern/v43/display_title"
require "ddex/ern/v43/display_title_text"
require "ddex/ern/v43/proprietary_id"

module DDEX module ERN module V43  # :nodoc: all

class DDEX::ERN::V43::Chapter < Element
  include ROXML


  xml_name "Chapter"

      xml_accessor :chapter_reference, :from => "ChapterReference", :required => true
      xml_accessor :chapter_ids, :as => [DDEX::ERN::V43::ProprietaryId], :from => "ChapterId", :required => false
      xml_accessor :display_title_texts, :as => [DDEX::ERN::V43::DisplayTitleText], :from => "DisplayTitleText", :required => false
      xml_accessor :display_titles, :as => [DDEX::ERN::V43::DisplayTitle], :from => "DisplayTitle", :required => false
      xml_accessor :additional_titles, :as => [DDEX::ERN::V43::AdditionalTitle], :from => "AdditionalTitle", :required => false
      xml_accessor :sequence_number, :as => Integer, :from => "SequenceNumber", :required => false
      xml_accessor :contributors, :as => [DDEX::ERN::V43::Contributor], :from => "Contributor", :required => false
      xml_accessor :characters, :as => [DDEX::ERN::V43::Character], :from => "Character", :required => false
      xml_accessor :representative_image_reference, :from => "RepresentativeImageReference", :required => false
      xml_accessor :start_time, :from => "StartTime", :required => false
      xml_accessor :duration, :from => "Duration", :required => false
      xml_accessor :end_time, :from => "EndTime", :required => false


  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  

end

end end end
