require "ddex/sound_recording_type"

module DDEX
  class SoundRecording < Element
    include Language

    xml_accessor :sound_recording_type, :as => SoundRecordingType
    xml_accessor :artist_related?, :from => "@IsArtistRelated"
    xml_accessor :sound_recording_ids, :as => [SoundRecordingId]
  end
end
