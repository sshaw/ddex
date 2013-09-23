require "roxml"
require "ddex/content_element"


module DDEX module V20120404 module DDEXC

class ReleaseResourceReference < ContentElement
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "ReleaseResourceReference"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :release_resource_type, :from => "@ReleaseResourceType" 
    
  
end

end end end
