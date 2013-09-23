require "roxml"
require "ddex/content_element"


module DDEX module V20120404 module DDEXC

class DeductionRate < ContentElement
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "DeductionRate"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :deduction_rate_type, :from => "@DeductionRateType" 
    
  
      xml_accessor :deduction_description, :from => "@DeductionDescription" 
    
  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
