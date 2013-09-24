require "roxml"
require "ddex/content_element"


module DDEX module ERN module V36

class LabelName < ContentElement
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "LabelName"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
      xml_accessor :label_name_type, :from => "@LabelNameType", :required => false
    
  
end

end end end
