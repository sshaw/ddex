module DDEX
  module ERN
    class ImageDetailsByTerritory < DDEX::ImageDetailsByTerritory
      xml_accessor :fulfillment_date, :as => FulfillmentDate
      xml_accessor :keywords, :as => [Keywords]
      xml_accessor :synopsis, :as => Synopsis
      xml_accessor :genres, :as => [Genre]
      xml_accessor :parental_warning_types, :as => [ParentalWarningType]
      xml_accessor :technical_image_details, :as => [TechnicalImageDetails]
    end
  end
end
