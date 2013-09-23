require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/description"
require "ddex/v20120404/ddexc/price"
require "ddex/v20120404/ddexc/price"
require "ddex/v20120404/ddexc/price"
require "ddex/v20120404/ddexc/price_range_type"
require "ddex/v20120404/ddexc/price_type"

module DDEX module V20120404 module DDEXC

class PriceInformation < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "PriceInformation"

      xml_accessor :description, :from => "Description", :required => false

      xml_accessor :price_range_type, :from => "PriceRangeType", :required => false

      xml_accessor :price_type, :from => "PriceType", :required => false

      xml_accessor :wholesale_price_per_unit, :from => "WholesalePricePerUnit", :required => false

      xml_accessor :bulk_order_wholesale_price_per_unit, :from => "BulkOrderWholesalePricePerUnit", :required => false

      xml_accessor :suggested_retail_price, :from => "SuggestedRetailPrice", :required => false



  
end

end end end
