#
# Auto-generated by jaxb2ruby v0.0.1 on 2018-03-01 07:54:49 +0000
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"


module DDEX module ERN module V37D2  # :nodoc: all

class ICPN < Element
  include ROXML


  xml_name "ns1:ICPN"


    xml_accessor :value, :from => ".", :required => false

  
      xml_accessor :ean?, :from => "@IsEan", :required => true
    
  

end

end end end
