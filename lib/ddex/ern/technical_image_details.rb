module DDEX
  module ERN
    class TechnicalImageDetails < Element
      xml_accessor :technical_resource_details_reference
      xml_accessor :drm_platform_type, :as => DRMPlatformType
    end
  end
end
