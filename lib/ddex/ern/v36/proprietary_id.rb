require "roxml"
require "ddex/element"


module DDEX module ERN module V36

class ProprietaryId < Element
  include ROXML

      
    
  
  xml_name "ProprietaryId"


    xml_accessor :value, :from => ".", :required => false
    

  
      xml_accessor :namespace, :from => "@Namespace", :required => true
    
  
end

end end end
