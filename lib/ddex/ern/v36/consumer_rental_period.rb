require "roxml"
require "ddex/element"


module DDEX module ERN module V36

class ConsumerRentalPeriod < Element
  include ROXML

      
    
  
  xml_name "ConsumerRentalPeriod"


    xml_accessor :value, :from => ".", :required => false
    

  
      xml_accessor :extensible?, :from => "@IsExtensible", :required => false
    
  
end

end end end
