#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/v20121219/ddexc/cue_sheet"

module DDEX module V20121219 module DDEXC

class CueSheetList < Element
  include ROXML


  xml_name "CueSheetList"

      
      xml_accessor :cue_sheets, :as => [DDEX::V20121219::DDEXC::CueSheet], :from => "CueSheet", :required => true



  
end

end end end