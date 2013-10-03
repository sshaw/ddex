require "roxml"
require "ddex/content_element"


module DDEX module V20120404 module DDEXC

class LabelName < ContentElement
  include ROXML

      
    
  
  xml_name "LabelName"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
      xml_accessor :label_name_type, :from => "@LabelNameType", :required => false
    
  
end

end end end
