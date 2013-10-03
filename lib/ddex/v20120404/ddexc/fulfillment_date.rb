require "roxml"
require "ddex/element"


module DDEX module V20120404 module DDEXC

class FulfillmentDate < Element
  include ROXML

      
    
  
  xml_name "FulfillmentDate"

      xml_accessor :fulfillment_date, :as => DateTime, :from => "FulfillmentDate", :required => true

      
      xml_accessor :resource_release_references, :as => [], :from => "ResourceReleaseReference", :required => false



  
end

end end end
