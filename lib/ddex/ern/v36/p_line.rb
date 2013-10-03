require "roxml"
require "ddex/element"


module DDEX module ERN module V36

class PLine < Element
  include ROXML

      
    
  
  xml_name "PLine"

      xml_accessor :year, :as => Integer, :from => "Year", :required => false

      xml_accessor :p_line_company, :from => "PLineCompany", :required => false

      xml_accessor :p_line_text, :from => "PLineText", :required => true



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
      xml_accessor :p_line_type, :from => "@PLineType", :required => false
    
  
end

end end end
