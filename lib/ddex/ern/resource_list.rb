require "ddex/ern/sound_recording"

module DDEX
  module ERN
    class ResourceList < Element
      include Enumerable

      xml_accessor :images, :from => "Image", :as => [Image]
      xml_accessor :sound_recordings, :from => "SoundRecording", :as => [SoundRecording]

      #xml_accessor :midi, :from => "MIDI", :as => [MIDI]
      #xml_accessor :sheet_music, :from => "SheetMusic", :as => [SheetMusic]
      #xml_accessor :software, :from => "Software", :as => [Software]
      #xml_accessor :text, :from => "Text", :as => [Text]
      #xml_accessor :user_defined, :from => "UserDefined", :as => [UserDefined]
      #xml_accessor :videos, :from => "Video", :as => [Video]

      def push(resource)
        case resource
        when SoundRecording
          sound_recordings << resource
        when Image
          images << resource
        else
          raise ArgumentError, "Unknown or unsupported resource: #{resource.class}"
        end
      end

      alias :<< :push

      def each(&block)
        (images + sound_recordings).each &block
      end
    end
  end
end
