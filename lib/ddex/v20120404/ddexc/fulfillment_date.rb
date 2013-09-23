require "roxml"
require "ddex/element"


module DDEX module V20120404 module DDEXC

class FulfillmentDate < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "FulfillmentDate"

      xml_accessor :fulfillment_date, :from => "FulfillmentDate", :required => true

      
      xml_accessor :resource_release_references, :as => [], :from => "ResourceReleaseReference", :required => false



  
end

end end end
