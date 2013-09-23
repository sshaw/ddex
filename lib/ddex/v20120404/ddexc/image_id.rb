require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/proprietary_id"

module DDEX module V20120404 module DDEXC

class ImageId < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "ImageId"

      
      xml_accessor :proprietary_ids, :as => [DDEX::V20120404::DDEXC::ProprietaryId], :from => "ProprietaryId", :required => true



  
      xml_accessor :replaced?, :from => "@IsReplaced", :required => false
    
  
end

end end end
