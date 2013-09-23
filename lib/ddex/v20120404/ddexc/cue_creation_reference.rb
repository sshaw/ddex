require "roxml"
require "ddex/element"


module DDEX module V20120404 module DDEXC

class CueCreationReference < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "CueCreationReference"

      xml_accessor :cue_resource_reference, :from => "CueResourceReference", :required => false

      xml_accessor :cue_work_reference, :from => "CueWorkReference", :required => false



  
end

end end end
