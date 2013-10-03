require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/usage"

module DDEX module ERN module V341

class ResourceUsage < Element
  include ROXML

      
    
  
  xml_name "ResourceUsage"

      
      xml_accessor :deal_resource_references, :as => [], :from => "DealResourceReference", :required => false

      
      xml_accessor :usages, :as => [DDEX::V20120404::DDEXC::Usage], :from => "Usage", :required => true



  
end

end end end
