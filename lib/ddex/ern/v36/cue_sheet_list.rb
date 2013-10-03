require "roxml"
require "ddex/element"

require "ddex/ern/v36/cue_sheet"

module DDEX module ERN module V36

class CueSheetList < Element
  include ROXML

      
    
  
  xml_name "CueSheetList"

      
      xml_accessor :cue_sheets, :as => [DDEX::ERN::V36::CueSheet], :from => "CueSheet", :required => true



  
end

end end end
