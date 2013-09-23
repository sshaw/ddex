require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/collection_collection_reference"

module DDEX module V20120404 module DDEXC

class CollectionCollectionReferenceList < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "CollectionCollectionReferenceList"

      xml_accessor :number_of_collections, :from => "NumberOfCollections", :required => false

      
      xml_accessor :collection_collection_references, :as => [], :from => "CollectionCollectionReference", :required => true



  
end

end end end
