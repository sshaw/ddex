#
# Auto-generated by jaxb2ruby v0.0.1 on 2018-03-01 07:54:48 +0000
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"


module DDEX module ERN module V37D2  # :nodoc: all

class Condition < Element
  include ROXML


  xml_name "ns1:Condition"

      xml_accessor :value, :as => Float, :from => "Value", :required => true
      xml_accessor :unit, :from => "Unit", :required => true
      xml_accessor :relational_relator, :from => "RelationalRelator", :required => true


  

end

end end end
