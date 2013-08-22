require "ddex/ern/sound_recording_details"

module DDEX
  module ERN
    class SoundRecording < DDEX::SoundRecording
      # Keep this..? Overlaps with Language
      #include Resource
      xml_accessor :updated?, :from => "@IsUpdated"
    end
  end
end
