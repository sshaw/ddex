require "roxml"
require "ddex/element"

require "ddex/ern/v36/description"
require "ddex/ern/v36/price"
require "ddex/ern/v36/price"
require "ddex/ern/v36/price"
require "ddex/ern/v36/price_range_type"
require "ddex/ern/v36/price_type"

module DDEX module ERN module V36

class PriceInformation < Element
  include ROXML

      
    
  
  xml_name "PriceInformation"

      xml_accessor :description, :as => DDEX::ERN::V36::Description, :from => "Description", :required => false

      xml_accessor :price_range_type, :as => DDEX::ERN::V36::PriceRangeType, :from => "PriceRangeType", :required => false

      xml_accessor :price_type, :as => DDEX::ERN::V36::PriceType, :from => "PriceType", :required => false

      xml_accessor :wholesale_price_per_unit, :as => DDEX::ERN::V36::Price, :from => "WholesalePricePerUnit", :required => false

      xml_accessor :bulk_order_wholesale_price_per_unit, :as => DDEX::ERN::V36::Price, :from => "BulkOrderWholesalePricePerUnit", :required => false

      xml_accessor :suggested_retail_price, :as => DDEX::ERN::V36::Price, :from => "SuggestedRetailPrice", :required => false



  
      xml_accessor :type, :from => "@Type", :required => false
    
  
end

end end end
