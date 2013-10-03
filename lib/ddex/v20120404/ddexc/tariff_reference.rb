require "roxml"
require "ddex/content_element"


module DDEX module V20120404 module DDEXC

class TariffReference < ContentElement
  include ROXML

      
    
  
  xml_name "TariffReference"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
      xml_accessor :tariff_sub_reference, :from => "@TariffSubReference", :required => false
    
  
end

end end end
