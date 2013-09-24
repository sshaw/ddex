require "roxml"
require "ddex/content_element"


module DDEX module ERN module V36

class ReleaseResourceReference < ContentElement
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "ReleaseResourceReference"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :release_resource_type, :from => "@ReleaseResourceType", :required => false
    
  
end

end end end
