require "roxml"
require "ddex/content_element"


module DDEX module ERN module V36

class PartyId < ContentElement
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "PartyId"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :namespace, :from => "@Namespace", :required => false
    
  
      xml_accessor :dpid?, :from => "@IsDPID", :required => false
    
  
      xml_accessor :isni?, :from => "@IsISNI", :required => false
    
  
end

end end end
