require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/purpose"

module DDEX module V20120404 module DDEXC

class ResourceContainedResourceReference < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "ResourceContainedResourceReference"

      xml_accessor :resource_contained_resource_reference, :from => "ResourceContainedResourceReference", :required => true

      xml_accessor :duration_used, :from => "DurationUsed", :required => false

      xml_accessor :start_point, :as => Integer, :from => "StartPoint", :required => false

      xml_accessor :purpose, :as => DDEX::V20120404::DDEXC::Purpose, :from => "Purpose", :required => false



  
end

end end end
