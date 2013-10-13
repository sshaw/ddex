require "roxml"
require "ddex/element"


module DDEX module V20120404 module DDEXC

class PromotionalCode < Element
  include ROXML

      
    
  
  xml_name "PromotionalCode"


    xml_accessor :value, :from => ".", :required => false
    

  
      xml_accessor :namespace, :from => "@Namespace", :required => false
    
  
end

end end end
