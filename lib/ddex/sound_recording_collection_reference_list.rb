module DDEX
  class SoundRecordingCollectionReference < Element; end

  class SoundRecordingCollectionReferenceList < Element
    xml_accessor :number_of_collections, :as => Integer
    xml_accessor :sound_recording_collection_references, :as => [SoundRecordingCollectionReference]
  end    
end
