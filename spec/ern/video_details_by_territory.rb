module DDEX
  module ERN
    class VideoDetailsByTerritory < DDEX::SoundRecordingDetailsByTerritory
      xml_accessor :courtesy_line, :as => CourtesyLine
      xml_accessor :sequence_number
      xml_accessor :host_sound_carriers, :as => [HostSoundCarrier]

      xml_accessor :clines, :from => "CLine", :as => [CLine]    
    end
  end  
end
