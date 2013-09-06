require "ddex/ern/technical_sound_recording_details"

module DDEX
  module ERN
    cass SoundRecordindDetailsByTerritory < DDEX::SoundRecordindDetailsByTerritory
      xml_accessor :sequence_number, :as => Integer
      xml_accessor :technical_sound_recording_detals, :as => [TechnicalSoundRecordingDetails]
      xml_accessor :parental_warning_type
    end
  end
end
