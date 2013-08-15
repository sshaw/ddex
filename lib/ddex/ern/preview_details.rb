module DDEX
  module ERN
    class PreviewDetails < Element
      xml_accessor :bottom_right_corner, :as => Float
      xml_accessor :expression_type, :as => ExpressionType
      xml_accessor :part_type, :as => PartType
      xml_accessor :top_left_corner, :as => Float
    end
  end
end
