require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/musical_work"

module DDEX module V20120404 module DDEXC

class WorkList < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "WorkList"

      
      xml_accessor :musical_works, :as => [], :from => "MusicalWork", :required => true



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
