#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"


module DDEX module ERN module V43  # :nodoc: all

class DDEX::ERN::V43::AspectRatio < Element
  include ROXML


  xml_name "AspectRatio"


    xml_accessor :value, :from => ".", :required => false

  
      xml_accessor :aspect_ratio_type, :from => "@AspectRatioType", :required => false
    
  
      xml_accessor :applies_to_cropped_resource?, :from => "@AppliesToCroppedResource", :required => false
    
  

end

end end end