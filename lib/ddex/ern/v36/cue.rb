require "roxml"
require "ddex/element"

require "ddex/ern/v36/c_line"
require "ddex/ern/v36/character"
require "ddex/ern/v36/creation_id"
require "ddex/ern/v36/cue_creation_reference"
require "ddex/ern/v36/cue_origin"
require "ddex/ern/v36/cue_theme_type"
require "ddex/ern/v36/cue_use_type"
require "ddex/ern/v36/cue_visual_perception_type"
require "ddex/ern/v36/cue_vocal_type"
require "ddex/ern/v36/p_line"
require "ddex/ern/v36/resource_contributor"
require "ddex/ern/v36/title"

module DDEX module ERN module V36

class Cue < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "Cue"

      xml_accessor :cue_use_type, :as => DDEX::ERN::V36::CueUseType, :from => "CueUseType", :required => false

      xml_accessor :cue_theme_type, :as => DDEX::ERN::V36::CueThemeType, :from => "CueThemeType", :required => false

      xml_accessor :cue_vocal_type, :as => DDEX::ERN::V36::CueVocalType, :from => "CueVocalType", :required => false

      xml_accessor :dance?, :from => "IsDance", :required => false

      xml_accessor :cue_visual_perception_type, :as => DDEX::ERN::V36::CueVisualPerceptionType, :from => "CueVisualPerceptionType", :required => false

      xml_accessor :cue_origin, :as => DDEX::ERN::V36::CueOrigin, :from => "CueOrigin", :required => false

      xml_accessor :referenced_creation_type, :from => "ReferencedCreationType", :required => false

      xml_accessor :referenced_creation_id, :as => DDEX::ERN::V36::CreationId, :from => "ReferencedCreationId", :required => false

      
      xml_accessor :referenced_creation_titles, :as => [DDEX::ERN::V36::Title], :from => "ReferencedCreationTitle", :required => false

      
      xml_accessor :referenced_creation_contributors, :as => [DDEX::ERN::V36::ResourceContributor], :from => "ReferencedCreationContributor", :required => false

      
      xml_accessor :referenced_creation_characters, :as => [DDEX::ERN::V36::Character], :from => "ReferencedCreationCharacter", :required => false

      
      xml_accessor :cue_creation_references, :as => [DDEX::ERN::V36::CueCreationReference], :from => "CueCreationReference", :required => false

      xml_accessor :has_musical_content, :from => "HasMusicalContent", :required => false

      xml_accessor :start_time, :from => "StartTime", :required => false

      xml_accessor :duration, :from => "Duration", :required => false

      xml_accessor :end_time, :from => "EndTime", :required => false

      
      xml_accessor :p_lines, :as => [DDEX::ERN::V36::PLine], :from => "PLine", :required => false

      
      xml_accessor :c_lines, :as => [DDEX::ERN::V36::CLine], :from => "CLine", :required => false



  
end

end end end
