require "roxml"
require "ddex/element"


module DDEX module V20120404 module DDEXC

class PLine < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "PLine"

      xml_accessor :year, :as => DateTime, :from => "Year", :required => false

      xml_accessor :p_line_company, :from => "PLineCompany", :required => false

      xml_accessor :p_line_text, :from => "PLineText", :required => true



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
      xml_accessor :p_line_type, :from => "@PLineType", :required => false
    
  
end

end end end
