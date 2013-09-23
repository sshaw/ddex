require "roxml"
require "ddex/content_element"


module DDEX module V20120404 module DDEXC

class SoundProcessorType < ContentElement
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "SoundProcessorType"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :version, :from => "@Version" 
    
  
      xml_accessor :namespace, :from => "@Namespace" 
    
  
      xml_accessor :user_defined_value, :from => "@UserDefinedValue" 
    
  
end

end end end
