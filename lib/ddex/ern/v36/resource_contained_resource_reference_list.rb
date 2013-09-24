require "roxml"
require "ddex/element"

require "ddex/ern/v36/resource_contained_resource_reference"

module DDEX module ERN module V36

class ResourceContainedResourceReferenceList < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "ResourceContainedResourceReferenceList"

      
      xml_accessor :resource_contained_resource_references, :as => [DDEX::ERN::V36::ResourceContainedResourceReference], :from => "ResourceContainedResourceReference", :required => true



  
end

end end end
