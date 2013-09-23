require "roxml"
require "ddex/element"


module DDEX module V20120404 module DDEXC

class CLine < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "CLine"

      xml_accessor :year, :from => "Year", :required => false

      xml_accessor :c_line_company, :from => "CLineCompany", :required => false

      xml_accessor :c_line_text, :from => "CLineText", :required => true



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
