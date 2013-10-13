require "roxml"
require "ddex/element"


module DDEX module V20120404 module DDEXC

class PriceConsumerPaidExcSalesTax < Element
  include ROXML

      
    
  
  xml_name "PriceConsumerPaidExcSalesTax"


    xml_accessor :value, :from => ".", :required => false
    

  
      xml_accessor :currency_code, :from => "@CurrencyCode", :required => false
    
  
end

end end end
