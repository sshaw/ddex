require "roxml"
require "ddex/element"


module DDEX module ERN module V36

class Extent < Element
  include ROXML

      
    
  
  xml_name "Extent"


    xml_accessor :value, :from => ".", :required => false
    

  
      xml_accessor :unit_of_measure, :from => "@UnitOfMeasure", :required => false
    
  
end

end end end
