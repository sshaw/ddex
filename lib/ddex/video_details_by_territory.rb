require "ddex/sound_recording_details_by_territory"
require "ddex/cline"

module DDEX
  class VideoDetailsByTerritory < SoundRecordingDetailsByTerritory
    xml_accessor :clines, :from => "CLine", :as => [CLine]    
  end
end
