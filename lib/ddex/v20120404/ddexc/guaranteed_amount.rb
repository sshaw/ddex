require "roxml"
require "ddex/content_element"


module DDEX module V20120404 module DDEXC

class GuaranteedAmount < ContentElement
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "GuaranteedAmount"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :currency_code, :from => "@CurrencyCode", :required => true
    
  
      xml_accessor :reference_unit, :from => "@ReferenceUnit", :required => true
    
  
end

end end end
