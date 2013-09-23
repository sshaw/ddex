require "roxml"
require "ddex/element"

require "ddex/ern/v341/sound_recording_preview_details"
require "ddex/v20120404/ddexc/description"
require "ddex/v20120404/ddexc/file"
require "ddex/v20120404/ddexc/fingerprint"
require "ddex/v20120404/ddexc/fulfillment_date"
require "ddex/v20120404/ddexc/fulfillment_date"
require "ddex/v20120404/ddexc/sound_processor_type"

module DDEX module ERN module V341

class TechnicalMidiDetails < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "TechnicalMidiDetails"

      xml_accessor :technical_resource_details_reference, :from => "TechnicalResourceDetailsReference", :required => true

      xml_accessor :duration, :from => "Duration", :required => false

      xml_accessor :resource_processing_required, :from => "ResourceProcessingRequired", :required => false

      xml_accessor :usable_resource_duration, :from => "UsableResourceDuration", :required => false

      xml_accessor :preview?, :from => "IsPreview", :required => false

      xml_accessor :preview_details, :from => "PreviewDetails", :required => false

      xml_accessor :fulfillment_date, :from => "FulfillmentDate", :required => false

      xml_accessor :consumer_fulfillment_date, :from => "ConsumerFulfillmentDate", :required => false

      
      xml_accessor :files, :as => [], :from => "File", :required => false

      
      xml_accessor :file_availability_descriptions, :as => [], :from => "FileAvailabilityDescription", :required => false

      xml_accessor :number_of_voices, :from => "NumberOfVoices", :required => false

      xml_accessor :sound_processor_type, :from => "SoundProcessorType", :required => false

      
      xml_accessor :fingerprints, :as => [], :from => "Fingerprint", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
