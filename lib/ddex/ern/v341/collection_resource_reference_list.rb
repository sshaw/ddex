require "roxml"
require "ddex/element"

require "ddex/ern/v341/collection_resource_reference"

module DDEX module ERN module V341

class CollectionResourceReferenceList < Element
  include ROXML

      
    
  
  xml_name "CollectionResourceReferenceList"

      
      xml_accessor :collection_resource_references, :as => [DDEX::ERN::V341::CollectionResourceReference], :from => "CollectionResourceReference", :required => true



  
end

end end end
