require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/creation_id"
require "ddex/v20120404/ddexc/cue_creation_reference"
require "ddex/v20120404/ddexc/cue_origin"
require "ddex/v20120404/ddexc/cue_theme_type"
require "ddex/v20120404/ddexc/cue_use_type"
require "ddex/v20120404/ddexc/cue_visual_perception_type"
require "ddex/v20120404/ddexc/cue_vocal_type"
require "ddex/v20120404/ddexc/resource_contributor"
require "ddex/v20120404/ddexc/title"

module DDEX module V20120404 module DDEXC

class Cue < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "Cue"

      xml_accessor :cue_use_type, :from => "CueUseType", :required => false

      xml_accessor :cue_theme_type, :from => "CueThemeType", :required => false

      xml_accessor :cue_vocal_type, :from => "CueVocalType", :required => false

      xml_accessor :dance?, :from => "IsDance", :required => false

      xml_accessor :cue_visual_perception_type, :from => "CueVisualPerceptionType", :required => false

      xml_accessor :cue_origin, :from => "CueOrigin", :required => false

      xml_accessor :referenced_creation_type, :from => "ReferencedCreationType", :required => false

      xml_accessor :referenced_creation_id, :from => "ReferencedCreationId", :required => false

      
      xml_accessor :referenced_creation_titles, :as => [], :from => "ReferencedCreationTitle", :required => false

      
      xml_accessor :referenced_creation_contributors, :as => [], :from => "ReferencedCreationContributor", :required => false

      
      xml_accessor :cue_creation_references, :as => [], :from => "CueCreationReference", :required => false

      xml_accessor :has_musical_content, :from => "HasMusicalContent", :required => false

      xml_accessor :start_time, :from => "StartTime", :required => false

      xml_accessor :duration, :from => "Duration", :required => false

      xml_accessor :end_time, :from => "EndTime", :required => false



  
end

end end end
