require "roxml"
require "ddex/element"


module DDEX module ERN module V36

class CatalogNumber < Element
  include ROXML

      
    
  
  xml_name "CatalogNumber"


    xml_accessor :value, :from => ".", :required => false
    

  
      xml_accessor :namespace, :from => "@Namespace", :required => true
    
  
end

end end end
