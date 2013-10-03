require "roxml"
require "ddex/element"


module DDEX module V20120404 module DDEXC

class CollectionResourceReferenceList < Element
  include ROXML

      
    
  
  xml_name "CollectionResourceReferenceList"

      
      xml_accessor :collection_resource_references, :as => [], :from => "CollectionResourceReference", :required => true



  
end

end end end
