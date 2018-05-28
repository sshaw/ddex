#
# Auto-generated by jaxb2ruby v0.0.1 on 2017-03-14 23:25:47 +0000
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v382/aspect_ratio"
require "ddex/ern/v382/container_format"
require "ddex/ern/v382/description"
require "ddex/ern/v382/drm_platform_type"
require "ddex/ern/v382/extent"
require "ddex/ern/v382/file"
require "ddex/ern/v382/fingerprint"
require "ddex/ern/v382/fulfillment_date"
require "ddex/ern/v382/image_codec_type"
require "ddex/ern/v382/preview_details"

module DDEX module ERN module V382  # :nodoc: all

class DDEX::ERN::V382::TechnicalImageDetails < Element
  include ROXML


  xml_name "TechnicalImageDetails"

      xml_accessor :technical_resource_details_reference, :from => "TechnicalResourceDetailsReference", :required => true
      xml_accessor :drm_platform_type, :as => DDEX::ERN::V382::DrmPlatformType, :from => "DrmPlatformType", :required => false
      xml_accessor :container_format, :as => DDEX::ERN::V382::ContainerFormat, :from => "ContainerFormat", :required => false
      xml_accessor :image_codec_type, :as => DDEX::ERN::V382::ImageCodecType, :from => "ImageCodecType", :required => false
      xml_accessor :image_height, :as => DDEX::ERN::V382::Extent, :from => "ImageHeight", :required => false
      xml_accessor :image_width, :as => DDEX::ERN::V382::Extent, :from => "ImageWidth", :required => false
      xml_accessor :aspect_ratio, :as => DDEX::ERN::V382::AspectRatio, :from => "AspectRatio", :required => false
      xml_accessor :color_depth, :as => Integer, :from => "ColorDepth", :required => false
      xml_accessor :image_resolution, :as => Integer, :from => "ImageResolution", :required => false
      xml_accessor :preview?, :from => "IsPreview", :required => false
      xml_accessor :preview_details, :as => DDEX::ERN::V382::PreviewDetails, :from => "PreviewDetails", :required => false
      xml_accessor :fulfillment_date, :as => DDEX::ERN::V382::FulfillmentDate, :from => "FulfillmentDate", :required => false
      xml_accessor :consumer_fulfillment_date, :as => DDEX::ERN::V382::FulfillmentDate, :from => "ConsumerFulfillmentDate", :required => false
      xml_accessor :files, :as => [DDEX::ERN::V382::File], :from => "File", :required => false
      xml_accessor :file_availability_descriptions, :as => [DDEX::ERN::V382::Description], :from => "FileAvailabilityDescription", :required => false
      xml_accessor :fingerprints, :as => [DDEX::ERN::V382::Fingerprint], :from => "Fingerprint", :required => false



      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false



end

end end end
