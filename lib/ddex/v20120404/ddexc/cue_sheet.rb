require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/cue"
require "ddex/v20120404/ddexc/cue_sheet_type"
require "ddex/v20120404/ddexc/proprietary_id"

module DDEX module V20120404 module DDEXC

class CueSheet < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "CueSheet"

      
      xml_accessor :cue_sheet_ids, :as => [], :from => "CueSheetId", :required => false

      xml_accessor :cue_sheet_reference, :from => "CueSheetReference", :required => true

      xml_accessor :cue_sheet_type, :from => "CueSheetType", :required => true

      
      xml_accessor :cues, :as => [], :from => "Cue", :required => true



  
end

end end end
