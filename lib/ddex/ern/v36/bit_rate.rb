require "roxml"
require "ddex/element"


module DDEX module ERN module V36

class BitRate < Element
  include ROXML

      
    
  
  xml_name "BitRate"


    xml_accessor :value, :from => ".", :required => false
    

  
      xml_accessor :unit_of_measure, :from => "@UnitOfMeasure", :required => false
    
  
end

end end end
