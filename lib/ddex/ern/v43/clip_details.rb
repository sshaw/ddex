#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v43/clip_type"

module DDEX module ERN module V43  # :nodoc: all

class DDEX::ERN::V43::ClipDetails < Element
  include ROXML


  xml_name "ClipDetails"

      xml_accessor :clip_type, :as => DDEX::ERN::V43::ClipType, :from => "ClipType", :required => true
      xml_accessor :top_left_corner, :from => "TopLeftCorner", :required => false
      xml_accessor :bottom_right_corner, :from => "BottomRightCorner", :required => false
      xml_accessor :expression_type, :from => "ExpressionType", :required => true


  

end

end end end
