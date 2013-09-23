require "roxml"
require "ddex/element"


module DDEX module V20120404 module DDEXC

class VideoCueSheetReferenceList < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "VideoCueSheetReferenceList"

      
      xml_accessor :video_cue_sheet_references, :as => [], :from => "VideoCueSheetReference", :required => true



  
end

end end end
