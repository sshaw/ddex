require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/cue_sheet"

module DDEX module V20120404 module DDEXC

class CueSheetList < Element
  include ROXML

      
    
  
  xml_name "CueSheetList"

      
      xml_accessor :cue_sheets, :as => [DDEX::V20120404::DDEXC::CueSheet], :from => "CueSheet", :required => true



  
end

end end end
