require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/description"

module DDEX module ERN module V341

class PreviewDetails < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "PreviewDetails"

      xml_accessor :part_type, :from => "PartType", :required => false

      xml_accessor :top_left_corner, :from => "TopLeftCorner", :required => false

      xml_accessor :bottom_right_corner, :from => "BottomRightCorner", :required => false

      xml_accessor :expression_type, :from => "ExpressionType", :required => true



  
end

end end end
