require "ddex/ern/technical_sound_recording_details"

module DDEX
  module ERN
    # TODO: SoundRecordindDetailsByTerritory is also defined in ddexC, investigate creating a base class
    class SoundRecordingDetails < Element
      xml_accessor :language, :from => "@LanguageAndScriptCode"


      xml_accessor :creation_date, :from => "CreationDate", :as => EventDate
      xml_accessor :details, :from => "TechnicalSoundRecordingDetails", :as => TechnicalSoundRecordingDetails
      xml_accessor :excluded_territories, :from => "ExcludedTerritoryCode", :as => []
      xml_accessor :parental_warning_type, :from => "ParentalWarningType"
      xml_accessor :sequence_number, :from => "SequenceNumber"
      xml_accessor :territories, :from => "TerritoryCode", :as => []
      #xml_accessor :title, :
    end
  end
end
