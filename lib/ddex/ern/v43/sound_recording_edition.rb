#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v43/edition_contributor"
require "ddex/ern/v43/p_line_with_default"
require "ddex/ern/v43/sound_recording_id"
require "ddex/ern/v43/technical_sound_recording_details"

module DDEX module ERN module V43  # :nodoc: all

class DDEX::ERN::V43::SoundRecordingEdition < Element
  include ROXML


  xml_name "SoundRecordingEdition"

      xml_accessor :type, :from => "Type", :required => false
      xml_accessor :resource_ids, :as => [DDEX::ERN::V43::SoundRecordingId], :from => "ResourceId", :required => true
      xml_accessor :edition_contributors, :as => [DDEX::ERN::V43::EditionContributor], :from => "EditionContributor", :required => false
      xml_accessor :p_lines, :as => [DDEX::ERN::V43::PLineWithDefault], :from => "PLine", :required => false
      xml_accessor :recording_mode, :from => "RecordingMode", :required => false
      xml_accessor :technical_details, :as => [DDEX::ERN::V43::TechnicalSoundRecordingDetails], :from => "TechnicalDetails", :required => false


  

end

end end end
