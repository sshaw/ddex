require "roxml"
require "ddex/element"


module DDEX module V20120404 module DDEXC

class UserDefinedResourceType < Element
  include ROXML

      
    
  
  xml_name "UserDefinedResourceType"


    xml_accessor :value, :from => ".", :required => false
    

  
      xml_accessor :namespace, :from => "@Namespace", :required => false
    
  
end

end end end
