require "roxml"
require "ddex/content_element"


module DDEX module V20120404 module DDEXC

class PriceType < ContentElement
  include ROXML

      
    
  
  xml_name "PriceType"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :namespace, :from => "@Namespace", :required => true
    
  
end

end end end
