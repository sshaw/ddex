#
# Auto-generated by jaxb2ruby v0.0.1 on 2016-07-11 13:50:27 +0100
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"


module DDEX module V20110120 module DDEXC  # :nodoc: all

class DDEX::V20110120::DDEXC::GuaranteedAmount < Element
  include ROXML


  xml_name "GuaranteedAmount"


    xml_accessor :value, :from => ".", :required => false

  
      xml_accessor :currency_code, :from => "@CurrencyCode", :required => true
    
  
      xml_accessor :reference_unit, :from => "@ReferenceUnit", :required => true
    
  

end

end end end