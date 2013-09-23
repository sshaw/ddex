require "roxml"
require "ddex/element"

require "ddex/ern/v341/image"
require "ddex/ern/v341/midi"
require "ddex/ern/v341/sheet_music"
require "ddex/ern/v341/software"
require "ddex/ern/v341/sound_recording"
require "ddex/ern/v341/text"
require "ddex/ern/v341/user_defined_resource"
require "ddex/ern/v341/video"

module DDEX module ERN module V341

class ResourceList < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "ResourceList"

      
      xml_accessor :sound_recordings, :as => [], :from => "SoundRecording", :required => false

      
      xml_accessor :midis, :as => [], :from => "MIDI", :required => false

      
      xml_accessor :videos, :as => [], :from => "Video", :required => false

      
      xml_accessor :images, :as => [], :from => "Image", :required => false

      
      xml_accessor :texts, :as => [], :from => "Text", :required => false

      
      xml_accessor :sheet_musics, :as => [], :from => "SheetMusic", :required => false

      
      xml_accessor :softwares, :as => [], :from => "Software", :required => false

      
      xml_accessor :user_defined_resources, :as => [], :from => "UserDefinedResource", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
