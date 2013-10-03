require "roxml"
require "ddex/content_element"


module DDEX module ERN module V36

class PriceRangeType < ContentElement
  include ROXML

      
    
  
  xml_name "PriceRangeType"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :namespace, :from => "@Namespace", :required => true
    
  
end

end end end
