module DDEX
  module ERN
    class ImageDetailsByTerritory < DDEX::ImageDetailsByTerritory
      xml_accessor :fulfillment_date, :as => FulfillmentDate
      xml_accessor :keywords, :as => [Keywords]
      xml_accessor :synopsis, :as => Synopsis
      xml_accessor :genres, :as => [Genre]
    end
  end
end
