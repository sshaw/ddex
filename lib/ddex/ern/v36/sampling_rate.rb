require "roxml"
require "ddex/content_element"


module DDEX module ERN module V36

class SamplingRate < ContentElement
  include ROXML

      
    
  
  xml_name "SamplingRate"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :unit_of_measure, :from => "@UnitOfMeasure", :required => false
    
  
end

end end end
