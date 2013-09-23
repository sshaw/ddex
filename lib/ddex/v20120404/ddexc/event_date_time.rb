require "roxml"
require "ddex/content_element"


module DDEX module V20120404 module DDEXC

class EventDateTime < ContentElement
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "EventDateTime"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :approximate?, :from => "@IsApproximate" 
    
  
      xml_accessor :before?, :from => "@IsBefore" 
    
  
      xml_accessor :after?, :from => "@IsAfter" 
    
  
      xml_accessor :territory_code, :from => "@TerritoryCode" 
    
  
      xml_accessor :location_description, :from => "@LocationDescription" 
    
  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
