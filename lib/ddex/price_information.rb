#require "ddex/description"
#require "ddex/price_range_type"
#require "ddex/price_type"
#require "ddex/price_type"

module DDEX
  class PriceInformation < Element
    # has lang and script code ---v
    #xml_accessor :description, :as => Description
    #xml_accessor :price_range_type, :as => PriceRangeType # NS
    #xml_accessor :price_type, :as => PriceType # NS
    xml_accessor :wholesale_price_per_unit, :as => Price
    xml_accessor :bulk_order_wholesale_price_per_unit, :as => Price
    xml_accessor :suggested_retail_price, :as => Price
  end
end
