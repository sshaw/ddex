require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/release_resource_reference"

module DDEX module V20120404 module DDEXC

class ReleaseResourceReferenceList < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "ReleaseResourceReferenceList"

      
      xml_accessor :release_resource_references, :as => [], :from => "ReleaseResourceReference", :required => true



  
end

end end end
