require "roxml"
require "ddex/element"

require "ddex/ern/v341/collection_work_reference"

module DDEX module ERN module V341

class CollectionWorkReferenceList < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "CollectionWorkReferenceList"

      
      xml_accessor :collection_work_references, :as => [DDEX::ERN::V341::CollectionWorkReference], :from => "CollectionWorkReference", :required => true



  
end

end end end
