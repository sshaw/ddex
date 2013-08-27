require "ddex/ern/sound_recording_details"

module DDEX
  module ERN
    class SoundRecording < DDEX::SoundRecording
      xml_accessor :updated?, :from => "@IsUpdated"
      xml_accessor :no_silence_before?, :as => :bool
      xml_accessor :no_silence_after?, :as => :bool
    end
  end
end
