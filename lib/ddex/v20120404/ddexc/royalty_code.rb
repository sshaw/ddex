require "roxml"
require "ddex/element"


module DDEX module V20120404 module DDEXC

class RoyaltyCode < Element
  include ROXML

      
    
  
  xml_name "RoyaltyCode"


    xml_accessor :value, :from => ".", :required => false
    

  
      xml_accessor :namespace, :from => "@Namespace", :required => true
    
  
end

end end end
