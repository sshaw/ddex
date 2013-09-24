require "roxml"
require "ddex/element"

require "ddex/ern/v36/resource_musical_work_reference"

module DDEX module ERN module V36

class ResourceMusicalWorkReferenceList < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "ResourceMusicalWorkReferenceList"

      
      xml_accessor :resource_musical_work_references, :as => [DDEX::ERN::V36::ResourceMusicalWorkReference], :from => "ResourceMusicalWorkReference", :required => true



  
end

end end end
