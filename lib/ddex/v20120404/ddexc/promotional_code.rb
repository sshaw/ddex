require "roxml"
require "ddex/content_element"


module DDEX module V20120404 module DDEXC

class PromotionalCode < ContentElement
  include ROXML

      
    
  
  xml_name "PromotionalCode"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :namespace, :from => "@Namespace", :required => false
    
  
end

end end end
