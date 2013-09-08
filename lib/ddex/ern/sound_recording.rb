
module DDEX
  module ERN
    class SoundRecording < Element
      include Language

      xml_accessor :updated?, :from => "@IsUpdated"

      xml_accessor :sound_recording_type, :as => SoundRecordingType
      xml_accessor :artist_related?, :from => "IsArtistRelated"
      xml_accessor :sound_recording_ids, :as => [SoundRecordingId]
      xml_accessor :indirect_sound_recording_ids, :as => [MusicalWorkId]

      xml_accessor :resource_reference
      xml_accessor :reference_title, :as => ReferenceTitle

      xml_accessor :instrumentation_description, :as => Description

      %w[medley potpourri instrumental background bonus_resource computer_generated].each do |attr|
        xml_accessor "#{attr}?", :from => "Is#{attr.camelize}"
      end

      ##
      xml_accessor :no_silence_before?, :as => :bool
      xml_accessor :no_silence_after?, :as => :bool
      ##

      xml_accessor :performer_information_required?
      xml_accessor :language_of_performance
      xml_accessor :duration
      xml_accessor :rights_agreement_id, :as => RightsAgreementId

      xml_accessor :sound_recording_collection_reference_list, :as => SoundRecordingCollectionReferenceList

      xml_accessor :resource_musical_work_reference_list, :from => "ResourceMusicalWorkReference", :as => [ResourceMusicalWorkReference]
      # alias_method :resource_musical_work_references, :resource_musical_work_reference_list

      xml_accessor :resource_contained_resource_reference_list, :from => "ResourceContainedResourceReference", :as => [ResourceContainedResourceReference]
      #alias_method :resource_musical_work_references, :resource_contained_resource_reference_list

      xml_accessor :creation_date, :as => CreationDate
      xml_accessor :mastered_date, :as => MasteredDate

      xml_accessor :sound_recording_details_by_territory, :as => [SoundRecordingDetailsByTerritory]
    end
  end
end
