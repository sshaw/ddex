require "roxml"
require "ddex/element"


module DDEX module ERN module V36

class ReleaseCollectionReference < Element
  include ROXML

      
    
  
  xml_name "ReleaseCollectionReference"


    xml_accessor :value, :from => ".", :required => false
    

  
      xml_accessor :release_resource_type, :from => "@ReleaseResourceType", :required => false
    
  
end

end end end
