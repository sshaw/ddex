require "roxml"
require "ddex/element"

require "ddex/ern/v36/collection_resource_reference"

module DDEX module ERN module V36

class CollectionResourceReferenceList < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "CollectionResourceReferenceList"

      
      xml_accessor :collection_resource_references, :as => [DDEX::ERN::V36::CollectionResourceReference], :from => "CollectionResourceReference", :required => true



  
end

end end end
