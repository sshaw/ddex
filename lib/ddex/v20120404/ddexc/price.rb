require "roxml"
require "ddex/content_element"


module DDEX module V20120404 module DDEXC

class Price < ContentElement
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "Price"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :currency_code, :from => "@CurrencyCode" 
    
  
end

end end end
