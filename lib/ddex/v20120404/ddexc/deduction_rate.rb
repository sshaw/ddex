require "roxml"
require "ddex/element"


module DDEX module V20120404 module DDEXC

class DeductionRate < Element
  include ROXML

      
    
  
  xml_name "DeductionRate"


    xml_accessor :value, :from => ".", :required => false
    

  
      xml_accessor :deduction_rate_type, :from => "@DeductionRateType", :required => true
    
  
      xml_accessor :deduction_description, :from => "@DeductionDescription", :required => false
    
  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
