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


module W3 module V2000 module V09 module XMLDsig  # :nodoc: all

class DSAKeyValue < DDEX::Element
  include ROXML

    setns "xmldsig", "http://www.w3.org/2000/09/xmldsig#"

  xml_name "DSAKeyValue"

      xml_accessor :p, :from => "ns6:P", :required => false
      xml_accessor :q, :from => "ns6:Q", :required => false
      xml_accessor :g, :from => "ns6:G", :required => false
      xml_accessor :y, :from => "ns6:Y", :required => true
      xml_accessor :j, :from => "ns6:J", :required => false
      xml_accessor :seed, :from => "ns6:Seed", :required => false
      xml_accessor :pgen_counter, :from => "ns6:PgenCounter", :required => false


  

end

end end end end
