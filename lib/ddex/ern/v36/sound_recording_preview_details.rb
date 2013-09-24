require "roxml"
require "ddex/element"

require "ddex/ern/v36/description"

module DDEX module ERN module V36

class SoundRecordingPreviewDetails < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "SoundRecordingPreviewDetails"

      xml_accessor :part_type, :as => DDEX::ERN::V36::Description, :from => "PartType", :required => false

      xml_accessor :start_point, :as => Integer, :from => "StartPoint", :required => false

      xml_accessor :end_point, :as => Integer, :from => "EndPoint", :required => false

      xml_accessor :duration, :from => "Duration", :required => false

      xml_accessor :top_left_corner, :as => Integer, :from => "TopLeftCorner", :required => false

      xml_accessor :bottom_right_corner, :as => Integer, :from => "BottomRightCorner", :required => false

      xml_accessor :expression_type, :from => "ExpressionType", :required => true



  
end

end end end
