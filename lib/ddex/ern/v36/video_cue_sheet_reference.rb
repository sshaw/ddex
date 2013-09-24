require "roxml"
require "ddex/element"


module DDEX module ERN module V36

class VideoCueSheetReference < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "VideoCueSheetReference"

      xml_accessor :video_cue_sheet_reference, :from => "VideoCueSheetReference", :required => true



  
end

end end end
