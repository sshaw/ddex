module DDEX
  module ERN
    class PreviewDetails < Element
      xml_accessor :bottom_right_corner, :from => "BottomRightCorner", :as => Float
      xml_accessor :expression_type, :from => "ExpressionType"
      xml_accessor :top_left_corner, :from => "TopLeftCorner", :as => Float

      # Just has a language attr
      #xml_accessor :part_type, :from => "PartType", :as => PartType 
    end
  end  
end
