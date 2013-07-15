require "ddex/ern/sound_recording_details"

module DDEX  
  module ERN
    # TODO: Also a ddexC sound recording, investigate base class
    class SoundRecording < Resource
      xml_name "SoundRecording"

      %w[IsMedley IsPotpourri IsInstrumental IsBackground IsComputerGenerated].each do |attr|
        xml_accessor "#{attr.underscore}?", :from => "@#{attr}"
      end

      xml_accessor :details, :from => "SoundRecordingDetailsByTerritory", :as => [SoundRecordingDetails]
      xml_accessor :duration, :from => "Duration"
      xml_accessor :instrumentation_description, :from => "InstrumentationDescription"
      xml_accessor :instrumentation_description_language, :in => "InstrumentationDescription", :from => "@LanguageAndScriptCode"
      xml_accessor :language, :from => "@LanguageAndScriptCode"
      xml_accessor :language_of_performance, :from => "LanguageOfPerformance"
      xml_accessor :mastered_date, :from => "MasteredDate", :as => EventDate

      #xml_accessor :musical_work_reference_list, :from => "ResourceMusicalWorkReferenceList", :as => ResourceMusicalWorkReferenceList
      #xml_accessor :resource_contained_resource_reference_list, :from => "ResourceContainedResourceReferenceList"

      # xml_accessor :id, :from => "SoundRecordingId", :as => SoundRecordingId
      # xml_accessor :indirect_id, :from => "SoundRecordingId", :as => IndirectSoundRecordingId
      # has Namespace, UserDefinedValue attrs

      xml_accessor :performer_information_required?, :from => "PerformerInformationRequired"
      xml_accessor :reference_title, :from => "ReferenceTitle", :as => ReferenceTitle
      xml_accessor :type, :from => "SoundRecordingType"
    end
  end
end
