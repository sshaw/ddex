require "roxml"
require "ddex/element"


module DDEX module ERN module V36

class LabelName < Element
  include ROXML

      
    
  
  xml_name "LabelName"


    xml_accessor :value, :from => ".", :required => false
    

  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
      xml_accessor :label_name_type, :from => "@LabelNameType", :required => false
    
  
end

end end end
