require "roxml"
require "ddex/content_element"


module DDEX module ERN module V36

class PromotionalCode < ContentElement
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "PromotionalCode"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :namespace, :from => "@Namespace", :required => false
    
  
end

end end end
