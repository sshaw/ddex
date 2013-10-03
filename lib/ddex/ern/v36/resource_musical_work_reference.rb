require "roxml"
require "ddex/element"


module DDEX module ERN module V36

class ResourceMusicalWorkReference < Element
  include ROXML

      
    
  
  xml_name "ResourceMusicalWorkReference"

      xml_accessor :sequence_number, :as => Integer, :from => "SequenceNumber", :required => false

      xml_accessor :duration_used, :from => "DurationUsed", :required => false

      xml_accessor :fragment?, :from => "IsFragment", :required => false

      xml_accessor :resource_musical_work_reference, :from => "ResourceMusicalWorkReference", :required => true



  
end

end end end
