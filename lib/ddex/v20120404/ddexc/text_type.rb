require "roxml"
require "ddex/content_element"


module DDEX module V20120404 module DDEXC

class TextType < ContentElement
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "TextType"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :namespace, :from => "@Namespace" 
    
  
      xml_accessor :user_defined_value, :from => "@UserDefinedValue" 
    
  
end

end end end
