require "roxml"
require "ddex/element"

require "ddex/ern/v341/midi_details_by_territory"
require "ddex/v20120404/ddexc/description"
require "ddex/v20120404/ddexc/event_date"
require "ddex/v20120404/ddexc/event_date"
require "ddex/v20120404/ddexc/midi_id"
require "ddex/v20120404/ddexc/midi_type"
require "ddex/v20120404/ddexc/musical_work_id"
require "ddex/v20120404/ddexc/reference_title"
require "ddex/v20120404/ddexc/resource_contained_resource_reference_list"
require "ddex/v20120404/ddexc/resource_musical_work_reference_list"
require "ddex/v20120404/ddexc/rights_agreement_id"

module DDEX module ERN module V341

class MIDI < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "MIDI"

      xml_accessor :midi_type, :from => "MidiType", :required => false

      xml_accessor :artist_related?, :from => "IsArtistRelated", :required => false

      
      xml_accessor :midi_ids, :as => [], :from => "MidiId", :required => true

      
      xml_accessor :indirect_midi_ids, :as => [], :from => "IndirectMidiId", :required => false

      xml_accessor :resource_reference, :from => "ResourceReference", :required => true

      xml_accessor :reference_title, :from => "ReferenceTitle", :required => true

      xml_accessor :instrumentation_description, :from => "InstrumentationDescription", :required => false

      xml_accessor :medley?, :from => "IsMedley", :required => false

      xml_accessor :potpourri?, :from => "IsPotpourri", :required => false

      xml_accessor :instrumental?, :from => "IsInstrumental", :required => false

      xml_accessor :background?, :from => "IsBackground", :required => false

      xml_accessor :hidden_resource?, :from => "IsHiddenResource", :required => false

      xml_accessor :bonus_resource?, :from => "IsBonusResource", :required => false

      xml_accessor :computer_generated?, :from => "IsComputerGenerated", :required => false

      xml_accessor :no_silence_before, :from => "NoSilenceBefore", :required => false

      xml_accessor :no_silence_after, :from => "NoSilenceAfter", :required => false

      xml_accessor :performer_information_required, :from => "PerformerInformationRequired", :required => false

      xml_accessor :language_of_performance, :from => "LanguageOfPerformance", :required => false

      xml_accessor :duration, :from => "Duration", :required => true

      xml_accessor :rights_agreement_id, :from => "RightsAgreementId", :required => false

      xml_accessor :resource_musical_work_reference_list, :from => "ResourceMusicalWorkReferenceList", :required => false

      xml_accessor :resource_contained_resource_reference_list, :from => "ResourceContainedResourceReferenceList", :required => false

      xml_accessor :creation_date, :from => "CreationDate", :required => false

      xml_accessor :mastered_date, :from => "MasteredDate", :required => false

      
      xml_accessor :midi_details_by_territories, :as => [], :from => "MidiDetailsByTerritory", :required => true



  
      xml_accessor :updated?, :from => "@IsUpdated" 
    
  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
