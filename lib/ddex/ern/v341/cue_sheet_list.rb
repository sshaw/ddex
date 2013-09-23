require "roxml"
require "ddex/element"

require "ddex/ern/v341/cue_sheet"

module DDEX module ERN module V341

class CueSheetList < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "CueSheetList"

      
      xml_accessor :cue_sheets, :as => [], :from => "CueSheet", :required => true



  
end

end end end
