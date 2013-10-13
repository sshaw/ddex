require "roxml"
require "ddex/element"


module DDEX module V20120404 module DDEXC

class PriceRangeType < Element
  include ROXML

      
    
  
  xml_name "PriceRangeType"


    xml_accessor :value, :from => ".", :required => false
    

  
      xml_accessor :namespace, :from => "@Namespace", :required => true
    
  
end

end end end
