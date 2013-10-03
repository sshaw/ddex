require "roxml"
require "ddex/element"

require "ddex/ern/v341/cue_sheet"

module DDEX module ERN module V341

class CueSheetList < Element
  include ROXML

      
    
  
  xml_name "CueSheetList"

      
      xml_accessor :cue_sheets, :as => [DDEX::ERN::V341::CueSheet], :from => "CueSheet", :required => true



  
end

end end end
