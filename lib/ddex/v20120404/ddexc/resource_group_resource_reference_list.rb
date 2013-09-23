require "roxml"
require "ddex/element"


module DDEX module V20120404 module DDEXC

class ResourceGroupResourceReferenceList < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "ResourceGroupResourceReferenceList"

      
      xml_accessor :resource_group_resource_references, :as => [], :from => "ResourceGroupResourceReference", :required => true



  
end

end end end
