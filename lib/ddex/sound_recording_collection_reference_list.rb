module DDEX
  module ERN
    class SoundRecordingCollectionReference < Element; end

    class SoundRecordingCollectionReferenceList < Element
      xml_accessor :number_of_collections, :as => Integer
      xml_accessor :sound_recording_collection_reference, :as => [SoundRecordingCollectionReference]
    end    
  end
end
