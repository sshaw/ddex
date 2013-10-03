require "roxml"
require "ddex/content_element"


module DDEX module V20120404 module DDEXC

class Extent < ContentElement
  include ROXML

      
    
  
  xml_name "Extent"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :unit_of_measure, :from => "@UnitOfMeasure", :required => false
    
  
end

end end end
