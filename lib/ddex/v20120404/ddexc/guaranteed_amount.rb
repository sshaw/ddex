require "roxml"
require "ddex/element"


module DDEX module V20120404 module DDEXC

class GuaranteedAmount < Element
  include ROXML

      
    
  
  xml_name "GuaranteedAmount"


    xml_accessor :value, :from => ".", :required => false
    

  
      xml_accessor :currency_code, :from => "@CurrencyCode", :required => true
    
  
      xml_accessor :reference_unit, :from => "@ReferenceUnit", :required => true
    
  
end

end end end
