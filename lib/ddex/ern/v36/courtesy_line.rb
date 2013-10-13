require "roxml"
require "ddex/element"


module DDEX module ERN module V36

class CourtesyLine < Element
  include ROXML

      
    
  
  xml_name "CourtesyLine"


    xml_accessor :value, :from => ".", :required => false
    

  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
