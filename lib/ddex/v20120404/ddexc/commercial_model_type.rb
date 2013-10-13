require "roxml"
require "ddex/element"


module DDEX module V20120404 module DDEXC

class CommercialModelType < Element
  include ROXML

      
    
  
  xml_name "CommercialModelType"


    xml_accessor :value, :from => ".", :required => false
    

  
      xml_accessor :namespace, :from => "@Namespace", :required => false
    
  
      xml_accessor :user_defined_value, :from => "@UserDefinedValue", :required => false
    
  
end

end end end
