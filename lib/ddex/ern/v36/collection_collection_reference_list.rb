require "roxml"
require "ddex/element"

require "ddex/ern/v36/collection_collection_reference"

module DDEX module ERN module V36

class CollectionCollectionReferenceList < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "CollectionCollectionReferenceList"

      xml_accessor :number_of_collections, :as => Integer, :from => "NumberOfCollections", :required => false

      
      xml_accessor :collection_collection_references, :as => [DDEX::ERN::V36::CollectionCollectionReference], :from => "CollectionCollectionReference", :required => true



  
end

end end end
