require "roxml"
require "ddex/element"

require "ddex/ern/v36/musical_work"

module DDEX module ERN module V36

class WorkList < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "WorkList"

      
      xml_accessor :musical_works, :as => [DDEX::ERN::V36::MusicalWork], :from => "MusicalWork", :required => true



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
