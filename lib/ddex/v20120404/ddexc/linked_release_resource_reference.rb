require "roxml"
require "ddex/content_element"


module DDEX module V20120404 module DDEXC

class LinkedReleaseResourceReference < ContentElement
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "LinkedReleaseResourceReference"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :link_description, :from => "@LinkDescription" 
    
  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
