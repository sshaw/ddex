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

class DDEX::ERN::V43::BitRate < Element
  include ROXML


  xml_name "BitRate"


    xml_accessor :value, :from => ".", :required => false

  
      xml_accessor :unit_of_measure, :from => "@UnitOfMeasure", :required => false
    
  

end

end end end
