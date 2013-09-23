require "roxml"
require "ddex/content_element"


module DDEX module V20120404 module DDEXC

class SamplingRate < ContentElement
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "SamplingRate"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :unit_of_measure, :from => "@UnitOfMeasure" 
    
  
end

end end end
