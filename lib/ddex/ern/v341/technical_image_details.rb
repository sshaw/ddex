require "roxml"
require "ddex/element"

require "ddex/ern/v341/preview_details"
require "ddex/v20120404/ddexc/container_format"
require "ddex/v20120404/ddexc/description"
require "ddex/v20120404/ddexc/drm_platform_type"
require "ddex/v20120404/ddexc/extent"
require "ddex/v20120404/ddexc/extent"
require "ddex/v20120404/ddexc/file"
require "ddex/v20120404/ddexc/fingerprint"
require "ddex/v20120404/ddexc/fulfillment_date"
require "ddex/v20120404/ddexc/fulfillment_date"
require "ddex/v20120404/ddexc/image_codec_type"

module DDEX module ERN module V341

class TechnicalImageDetails < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "TechnicalImageDetails"

      xml_accessor :technical_resource_details_reference, :from => "TechnicalResourceDetailsReference", :required => true

      xml_accessor :drm_platform_type, :from => "DrmPlatformType", :required => false

      xml_accessor :container_format, :from => "ContainerFormat", :required => false

      xml_accessor :image_codec_type, :from => "ImageCodecType", :required => false

      xml_accessor :image_height, :from => "ImageHeight", :required => false

      xml_accessor :image_width, :from => "ImageWidth", :required => false

      xml_accessor :aspect_ratio, :from => "AspectRatio", :required => false

      xml_accessor :color_depth, :from => "ColorDepth", :required => false

      xml_accessor :image_resolution, :from => "ImageResolution", :required => false

      xml_accessor :preview?, :from => "IsPreview", :required => false

      xml_accessor :preview_details, :from => "PreviewDetails", :required => false

      xml_accessor :fulfillment_date, :from => "FulfillmentDate", :required => false

      xml_accessor :consumer_fulfillment_date, :from => "ConsumerFulfillmentDate", :required => false

      
      xml_accessor :files, :as => [], :from => "File", :required => false

      
      xml_accessor :file_availability_descriptions, :as => [], :from => "FileAvailabilityDescription", :required => false

      
      xml_accessor :fingerprints, :as => [], :from => "Fingerprint", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
