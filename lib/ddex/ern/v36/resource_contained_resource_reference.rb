require "roxml"
require "ddex/element"

require "ddex/ern/v36/purpose"

module DDEX module ERN module V36

class ResourceContainedResourceReference < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "ResourceContainedResourceReference"

      xml_accessor :resource_contained_resource_reference, :from => "ResourceContainedResourceReference", :required => true

      xml_accessor :duration_used, :from => "DurationUsed", :required => false

      xml_accessor :start_point, :as => Integer, :from => "StartPoint", :required => false

      xml_accessor :purpose, :as => DDEX::ERN::V36::Purpose, :from => "Purpose", :required => false



  
end

end end end
