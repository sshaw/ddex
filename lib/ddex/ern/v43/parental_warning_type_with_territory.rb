#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"


module DDEX module ERN module V43  # :nodoc: all

class DDEX::ERN::V43::ParentalWarningTypeWithTerritory < Element
  include ROXML


  xml_name "ParentalWarningTypeWithTerritory"


    xml_accessor :value, :from => ".", :required => false

  
      xml_accessor :namespace, :from => "@Namespace", :required => false
    
  
      xml_accessor :applicable_territory_code, :from => "@ApplicableTerritoryCode", :required => false
    
  
      xml_accessor :user_defined_value, :from => "@UserDefinedValue", :required => false
    
  
      xml_accessor :default?, :from => "@IsDefault", :required => false
    
  

end

end end end
