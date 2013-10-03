require "roxml"
require "ddex/element"


module DDEX module ERN module V36

class ResourceGroupResourceReferenceList < Element
  include ROXML

      
    
  
  xml_name "ResourceGroupResourceReferenceList"

      
      xml_accessor :resource_group_resource_references, :as => [], :from => "ResourceGroupResourceReference", :required => true



  
end

end end end
