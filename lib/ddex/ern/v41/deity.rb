#
# Auto-generated by jaxb2ruby v0.0.1 on 2020-07-27 20:26:16 -0400
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"


module DDEX module ERN module V41  # :nodoc: all

class DDEX::ERN::V41::Deity < Element
  include ROXML


  xml_name "Deity"


    xml_accessor :value, :from => ".", :required => false

  
      xml_accessor :applicable_territory_code, :from => "@ApplicableTerritoryCode", :required => false
    
  
      xml_accessor :default?, :from => "@IsDefault", :required => false
    
  

end

end end end
