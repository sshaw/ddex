#
# Auto-generated by jaxb2ruby v0.0.1 on 2018-03-01 07:52:38 +0000
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"


module DDEX module ERN module V371  # :nodoc: all

class SoundRecordingCollectionReference < Element
  include ROXML


  xml_name "ns1:SoundRecordingCollectionReference"

      xml_accessor :sequence_number, :as => Integer, :from => "SequenceNumber", :required => false
      xml_accessor :sound_recording_collection_reference, :from => "SoundRecordingCollectionReference", :required => true
      xml_accessor :start_time, :from => "StartTime", :required => false
      xml_accessor :duration, :from => "Duration", :required => false
      xml_accessor :end_time, :from => "EndTime", :required => false
      xml_accessor :release_resource_type, :from => "ReleaseResourceType", :required => false


  

end

end end end
