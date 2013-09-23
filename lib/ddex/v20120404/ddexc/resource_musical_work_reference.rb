require "roxml"
require "ddex/element"


module DDEX module V20120404 module DDEXC

class ResourceMusicalWorkReference < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "ResourceMusicalWorkReference"

      xml_accessor :sequence_number, :from => "SequenceNumber", :required => false

      xml_accessor :duration_used, :from => "DurationUsed", :required => false

      xml_accessor :fragment?, :from => "IsFragment", :required => false

      xml_accessor :resource_musical_work_reference, :from => "ResourceMusicalWorkReference", :required => true



  
end

end end end
