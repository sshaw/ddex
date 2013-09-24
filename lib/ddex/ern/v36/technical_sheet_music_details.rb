require "roxml"
require "ddex/element"

require "ddex/ern/v36/container_format"
require "ddex/ern/v36/description"
require "ddex/ern/v36/drm_platform_type"
require "ddex/ern/v36/file"
require "ddex/ern/v36/fingerprint"
require "ddex/ern/v36/fulfillment_date"
require "ddex/ern/v36/fulfillment_date"
require "ddex/ern/v36/preview_details"
require "ddex/ern/v36/sheet_music_codec_type"

module DDEX module ERN module V36

class TechnicalSheetMusicDetails < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "TechnicalSheetMusicDetails"

      xml_accessor :technical_resource_details_reference, :from => "TechnicalResourceDetailsReference", :required => true

      xml_accessor :drm_platform_type, :as => DDEX::ERN::V36::DrmPlatformType, :from => "DrmPlatformType", :required => false

      xml_accessor :container_format, :as => DDEX::ERN::V36::ContainerFormat, :from => "ContainerFormat", :required => false

      xml_accessor :sheet_music_codec_type, :as => DDEX::ERN::V36::SheetMusicCodecType, :from => "SheetMusicCodecType", :required => false

      xml_accessor :preview?, :from => "IsPreview", :required => false

      xml_accessor :preview_details, :as => DDEX::ERN::V36::PreviewDetails, :from => "PreviewDetails", :required => false

      xml_accessor :fulfillment_date, :as => DDEX::ERN::V36::FulfillmentDate, :from => "FulfillmentDate", :required => false

      xml_accessor :consumer_fulfillment_date, :as => DDEX::ERN::V36::FulfillmentDate, :from => "ConsumerFulfillmentDate", :required => false

      
      xml_accessor :files, :as => [DDEX::ERN::V36::File], :from => "File", :required => false

      
      xml_accessor :file_availability_descriptions, :as => [DDEX::ERN::V36::Description], :from => "FileAvailabilityDescription", :required => false

      
      xml_accessor :fingerprints, :as => [DDEX::ERN::V36::Fingerprint], :from => "Fingerprint", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
