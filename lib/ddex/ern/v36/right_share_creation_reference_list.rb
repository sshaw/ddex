require "roxml"
require "ddex/element"


module DDEX module ERN module V36

class RightShareCreationReferenceList < Element
  include ROXML

      
    
  
  xml_name "RightShareCreationReferenceList"

      
      xml_accessor :right_share_work_references, :as => [], :from => "RightShareWorkReference", :required => false

      
      xml_accessor :right_share_resource_references, :as => [], :from => "RightShareResourceReference", :required => false

      
      xml_accessor :right_share_release_references, :as => [], :from => "RightShareReleaseReference", :required => false



  
end

end end end
