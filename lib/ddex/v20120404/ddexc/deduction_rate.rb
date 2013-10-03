require "roxml"
require "ddex/content_element"


module DDEX module V20120404 module DDEXC

class DeductionRate < ContentElement
  include ROXML

      
    
  
  xml_name "DeductionRate"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :deduction_rate_type, :from => "@DeductionRateType", :required => true
    
  
      xml_accessor :deduction_description, :from => "@DeductionDescription", :required => false
    
  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
