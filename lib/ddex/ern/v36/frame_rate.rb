require "roxml"
require "ddex/element"


module DDEX module ERN module V36

class FrameRate < Element
  include ROXML

      
    
  
  xml_name "FrameRate"


    xml_accessor :value, :from => ".", :required => false
    

  
      xml_accessor :unit_of_measure, :from => "@UnitOfMeasure", :required => false
    
  
end

end end end
