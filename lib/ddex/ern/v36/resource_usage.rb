require "roxml"
require "ddex/element"

require "ddex/ern/v36/usage"

module DDEX module ERN module V36

class ResourceUsage < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "ResourceUsage"

      
      xml_accessor :deal_resource_references, :as => [], :from => "DealResourceReference", :required => false

      
      xml_accessor :usages, :as => [DDEX::ERN::V36::Usage], :from => "Usage", :required => true



  
end

end end end
