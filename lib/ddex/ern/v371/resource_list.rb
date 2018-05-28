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

require "ddex/ern/v371/image"
require "ddex/ern/v371/midi"
require "ddex/ern/v371/sheet_music"
require "ddex/ern/v371/software"
require "ddex/ern/v371/sound_recording"
require "ddex/ern/v371/text"
require "ddex/ern/v371/user_defined_resource"
require "ddex/ern/v371/video"

module DDEX module ERN module V371  # :nodoc: all

class ResourceList < Element
  include ROXML


  xml_name "ns1:ResourceList"

      xml_accessor :sound_recordings, :as => [SoundRecording], :from => "SoundRecording", :required => false
      xml_accessor :midis, :as => [MIDI], :from => "MIDI", :required => false
      xml_accessor :videos, :as => [Video], :from => "Video", :required => false
      xml_accessor :images, :as => [Image], :from => "Image", :required => false
      xml_accessor :texts, :as => [Text], :from => "Text", :required => false
      xml_accessor :sheet_musics, :as => [SheetMusic], :from => "SheetMusic", :required => false
      xml_accessor :softwares, :as => [Software], :from => "Software", :required => false
      xml_accessor :user_defined_resources, :as => [UserDefinedResource], :from => "UserDefinedResource", :required => false


  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  

end

end end end
