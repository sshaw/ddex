module DDEX
  module ERN
    class TechnicalVideoDetails < Element
      include Language

      xml_accessor :technical_resource_details_reference
      xml_accessor :drm_platform_type, :as => DrmPlatformType
      xml_accessor :overall_bit_rate, :as => BitRate
      xml_accessor :container_format, :as => ContainerFormat
      xml_accessor :video_codec_type, :as => VideoCodecType
      xml_accessor :video_bit_rate, :as => BitRate
    end
  end
end
