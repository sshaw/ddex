require "roxml"
require "ddex/content_element"


module DDEX module V20120404 module DDEXC

class ReleaseResourceReference < ContentElement
  include ROXML

      
    
  
  xml_name "ReleaseResourceReference"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :release_resource_type, :from => "@ReleaseResourceType", :required => false
    
  
end

end end end
