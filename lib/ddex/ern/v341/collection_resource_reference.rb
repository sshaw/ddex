require "roxml"
require "ddex/element"


module DDEX module ERN module V341

class CollectionResourceReference < Element
  include ROXML

      
    
  
  xml_name "CollectionResourceReference"

      xml_accessor :collection_resource_reference, :from => "CollectionResourceReference", :required => true

      xml_accessor :duration, :from => "Duration", :required => false



  
end

end end end
