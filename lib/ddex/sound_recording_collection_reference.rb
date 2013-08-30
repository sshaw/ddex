
module DDEX
  class SoundRecordingCollectionReference < Element
    # sequence_number
    xml_accessor :sound_recording_collection_reference # IDREF
    xml_accessor :start_time
    xml_accessor :duration
    xml_accessor :end_time
    xml_accessor :release_resource_type
  end
end

