require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/resource_contained_resource_reference"

module DDEX module V20120404 module DDEXC

class ResourceContainedResourceReferenceList < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "ResourceContainedResourceReferenceList"

      
      xml_accessor :resource_contained_resource_references, :as => [], :from => "ResourceContainedResourceReference", :required => true



  
end

end end end
