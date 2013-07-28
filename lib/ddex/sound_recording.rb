require "ddex/sound_recording_type"

module DDEX
  class SoundRecording < Element
    include Language

    xml_accessor :sound_recording_type, :as => SoundRecordingType
  end
end
