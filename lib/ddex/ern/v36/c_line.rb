require "roxml"
require "ddex/element"


module DDEX module ERN module V36

class CLine < Element
  include ROXML

      
    
  
  xml_name "CLine"

      xml_accessor :year, :as => Integer, :from => "Year", :required => false

      xml_accessor :c_line_company, :from => "CLineCompany", :required => false

      xml_accessor :c_line_text, :from => "CLineText", :required => true



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
