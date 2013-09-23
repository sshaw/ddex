require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/tax_scope"
require "ddex/v20120404/ddexc/tax_type"

module DDEX module V20120404 module DDEXC

class TaxRate < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "TaxRate"

      xml_accessor :rate, :from => "Rate", :required => true

      
      xml_accessor :tax_types, :as => [], :from => "TaxType", :required => true

      
      xml_accessor :tax_scopes, :as => [], :from => "TaxScope", :required => true



  
end

end end end
