require "roxml"
require "ddex/content_element"


module DDEX module V20120404 module DDEXC

class PartyId < ContentElement
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "PartyId"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :namespace, :from => "@Namespace" 
    
  
      xml_accessor :dpid?, :from => "@IsDPID" 
    
  
      xml_accessor :isni?, :from => "@IsISNI" 
    
  
end

end end end
