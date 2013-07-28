require "ddex/ern/technical_sound_recording_details"

module DDEX
  module ERN
    # TODO: SoundRecordindDetailsByTerritory is also defined in ddexC, investigate creating a base class
    class SoundRecordingDetails < Element
      include Language

      xml_name "SoundRecordindDetailsByTerritory"

      xml_accessor :creation_date, :as => EventDate
      xml_accessor :details, :from => "TechnicalSoundRecordingDetails", :as => TechnicalSoundRecordingDetails
      xml_accessor :excluded_territories, :from => "ExcludedTerritoryCode", :as => []
      xml_accessor :parental_warning_type
      xml_accessor :sequence_number, :as => Integer
      xml_accessor :territories, :from => "TerritoryCode", :as => []
      xml_accessor :title, :as => [Title]
    end
  end
end
