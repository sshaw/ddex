require "roxml"
require "ddex/element"


module DDEX module V20120404 module DDEXC

class CatalogNumber < Element
  include ROXML

      
    
  
  xml_name "CatalogNumber"


    xml_accessor :value, :from => ".", :required => false
    

  
      xml_accessor :namespace, :from => "@Namespace", :required => true
    
  
end

end end end
