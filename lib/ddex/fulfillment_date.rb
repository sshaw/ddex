module DDEX
  class FulfillmentDate < Element
    xml_accessor :fulfillment_date, :as => Date
    xml_accessor :resource_release_references, :as => []
  end
end
