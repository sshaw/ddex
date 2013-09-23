require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/resource_musical_work_reference"

module DDEX module V20120404 module DDEXC

class ResourceMusicalWorkReferenceList < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "ResourceMusicalWorkReferenceList"

      
      xml_accessor :resource_musical_work_references, :as => [], :from => "ResourceMusicalWorkReference", :required => true



  
end

end end end
