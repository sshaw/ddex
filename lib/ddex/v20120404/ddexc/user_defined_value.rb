require "roxml"
require "ddex/content_element"


module DDEX module V20120404 module DDEXC

class UserDefinedValue < ContentElement
  include ROXML

      
    
  
  xml_name "UserDefinedValue"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :namespace, :from => "@Namespace", :required => false
    
  
      xml_accessor :description, :from => "@Description", :required => false
    
  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
