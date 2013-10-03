require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/musical_work"

module DDEX module V20120404 module DDEXC

class WorkList < Element
  include ROXML

      
    
  
  xml_name "WorkList"

      
      xml_accessor :musical_works, :as => [DDEX::V20120404::DDEXC::MusicalWork], :from => "MusicalWork", :required => true



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
