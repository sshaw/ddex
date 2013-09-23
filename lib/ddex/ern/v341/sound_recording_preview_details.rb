require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/description"

module DDEX module ERN module V341

class SoundRecordingPreviewDetails < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "SoundRecordingPreviewDetails"

      xml_accessor :part_type, :as => DDEX::V20120404::DDEXC::Description, :from => "PartType", :required => false

      xml_accessor :start_point, :as => Integer, :from => "StartPoint", :required => false

      xml_accessor :end_point, :as => Integer, :from => "EndPoint", :required => false

      xml_accessor :duration, :from => "Duration", :required => false

      xml_accessor :top_left_corner, :as => Integer, :from => "TopLeftCorner", :required => false

      xml_accessor :bottom_right_corner, :as => Integer, :from => "BottomRightCorner", :required => false

      xml_accessor :expression_type, :from => "ExpressionType", :required => true



  
end

end end end
