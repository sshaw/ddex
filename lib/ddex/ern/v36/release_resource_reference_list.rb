require "roxml"
require "ddex/element"

require "ddex/ern/v36/release_resource_reference"

module DDEX module ERN module V36

class ReleaseResourceReferenceList < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "ReleaseResourceReferenceList"

      
      xml_accessor :release_resource_references, :as => [DDEX::ERN::V36::ReleaseResourceReference], :from => "ReleaseResourceReference", :required => true



  
end

end end end
