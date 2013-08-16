require "ddex/description"
require "ddex/creation_date"
require "ddex/mastered_date"
require "ddex/sound_recording_id"
require "ddex/sound_recording_type"
#require "ddex/sound_recording_details_by_territory"

module DDEX
  class InstrumentationDescription < Description; end

  class SoundRecording < Element
    include Language

    xml_accessor :sound_recording_type, :as => SoundRecordingType
    xml_accessor :artist_related?, :from => "@IsArtistRelated"
    xml_accessor :sound_recording_ids, :as => [SoundRecordingId]

    xml_accessor :instrumentation_description, :as => InstrumentationDescription

    %w[medley potpourri instrumental background bonus_resource computer_generated].each do |attr|
      xml_accessor "#{attr}?", :from => "@Is#{attr.camelize}"
    end

    #xml_accessor :sound_recording_details_by_territory, :as => [SoundRecordingDetailsByTerritory]
    xml_accessor :performer_information_required?
    xml_accessor :language_of_performance
    xml_accessor :duration
    #xml_accessor :rights_agreement_id, :as => RightsAgreementId
    #xml_accessor :resource_musical_work_reference_list, :as => ResourceMusicalWorkReferenceList
    #xml_accessor :resource_contained_resource_reference_list, :as => ResourceContainedResourceReferenceList
    xml_accessor :creation_date, :as => CreationDate
    xml_accessor :mastered_date, :as => MasteredDate
  end
end
