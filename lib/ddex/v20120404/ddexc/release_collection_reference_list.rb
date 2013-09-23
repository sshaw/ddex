require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/release_collection_reference"

module DDEX module V20120404 module DDEXC

class ReleaseCollectionReferenceList < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "ReleaseCollectionReferenceList"

      xml_accessor :number_of_collections, :from => "NumberOfCollections", :required => false

      
      xml_accessor :release_collection_references, :as => [], :from => "ReleaseCollectionReference", :required => true



  
end

end end end
