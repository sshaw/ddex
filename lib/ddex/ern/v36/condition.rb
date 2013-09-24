require "roxml"
require "ddex/element"


module DDEX module ERN module V36

class Condition < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "Condition"

      xml_accessor :value, :as => Integer, :from => "Value", :required => true

      xml_accessor :unit, :from => "Unit", :required => true

      xml_accessor :relational_relator, :from => "RelationalRelator", :required => true



  
end

end end end
