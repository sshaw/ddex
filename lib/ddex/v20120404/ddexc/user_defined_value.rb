require "roxml"
require "ddex/content_element"


module DDEX module V20120404 module DDEXC

class UserDefinedValue < ContentElement
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "UserDefinedValue"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :namespace, :from => "@Namespace" 
    
  
      xml_accessor :description, :from => "@Description" 
    
  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
