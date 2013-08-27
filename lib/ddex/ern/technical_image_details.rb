require "ddex/ern/file_availability_description"
require "ddex/ern/image_height"
require "ddex/ern/image_width"
require "ddex/ern/preview_details"

module DDEX
  module ERN
    class TechnicalImageDetails < Element
      include Language

      xml_name "TechnicalImageDetails"

      xml_accessor :technical_resource_details_reference
      xml_accessor :drm_platform_type, :as => DRMPlatformType
      xml_accessor :container_format, :as => ContainerFormat
      xml_accessor :image_codec_type, :as => ImageCodecType
      xml_accessor :image_width, :as => ImageWidth
      xml_accessor :image_height, :as => ImageHeight
      xml_accessor :aspect_ratio, :as => Float
      xml_accessor :color_depth, :as => Integer
      xml_accessor :image_resolution, :as => Integer
      xml_accessor :preview?, :from => "IsPreview"
      xml_accessor :preview_details, :as => PreviewDetails
      xml_accessor :fulfillment_date, :as => FulfillmentDate
      xml_accessor :consumer_fulfillment_date, :as => ConsumerFulfillmentDate
      xml_accessor :file_availability_descriptions, :as => [FileAvailabilityDescription]
      xml_accessor :files, :as => [File]
      xml_accessor :fingerprints, :as => [Fingerprint]
    end
  end
end
