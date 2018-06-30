#
# Auto-generated by jaxb2ruby v0.0.1 on 2018-03-01 07:52:38 +0000
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v371/description"
require "ddex/ern/v371/file"
require "ddex/ern/v371/fingerprint"
require "ddex/ern/v371/fulfillment_date"
require "ddex/ern/v371/sound_processor_type"
require "ddex/ern/v371/sound_recording_preview_details"

module DDEX module ERN module V371  # :nodoc: all

class TechnicalMidiDetails < Element
  include ROXML


  xml_name "TechnicalMidiDetails"

      xml_accessor :technical_resource_details_reference, :from => "TechnicalResourceDetailsReference", :required => true
      xml_accessor :duration, :from => "Duration", :required => false
      xml_accessor :resource_processing_required?, :from => "ResourceProcessingRequired", :required => false
      xml_accessor :usable_resource_duration, :from => "UsableResourceDuration", :required => false
      xml_accessor :preview?, :from => "IsPreview", :required => false
      xml_accessor :preview_details, :as => SoundRecordingPreviewDetails, :from => "PreviewDetails", :required => false
      xml_accessor :fulfillment_date, :as => FulfillmentDate, :from => "FulfillmentDate", :required => false
      xml_accessor :consumer_fulfillment_date, :as => FulfillmentDate, :from => "ConsumerFulfillmentDate", :required => false
      xml_accessor :files, :as => [File], :from => "File", :required => false
      xml_accessor :file_availability_descriptions, :as => [Description], :from => "FileAvailabilityDescription", :required => false
      xml_accessor :number_of_voices, :as => Integer, :from => "NumberOfVoices", :required => false
      xml_accessor :sound_processor_type, :as => SoundProcessorType, :from => "SoundProcessorType", :required => false
      xml_accessor :fingerprints, :as => [Fingerprint], :from => "Fingerprint", :required => false


  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  

end

end end end
