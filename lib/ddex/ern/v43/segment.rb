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

class DDEX::ERN::V43::Segment < Element
  include ROXML


  xml_name "Segment"

      xml_accessor :start_time, :from => "StartTime", :required => true
      xml_accessor :end_time, :from => "EndTime", :required => false
      xml_accessor :duration, :from => "Duration", :required => false


  

end

end end end
