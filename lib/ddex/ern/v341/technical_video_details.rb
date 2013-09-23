require "roxml"
require "ddex/element"

require "ddex/ern/v341/sound_recording_preview_details"
require "ddex/v20120404/ddexc/audio_codec_type"
require "ddex/v20120404/ddexc/bit_rate"
require "ddex/v20120404/ddexc/bit_rate"
require "ddex/v20120404/ddexc/bit_rate"
require "ddex/v20120404/ddexc/container_format"
require "ddex/v20120404/ddexc/description"
require "ddex/v20120404/ddexc/drm_platform_type"
require "ddex/v20120404/ddexc/extent"
require "ddex/v20120404/ddexc/extent"
require "ddex/v20120404/ddexc/file"
require "ddex/v20120404/ddexc/fingerprint"
require "ddex/v20120404/ddexc/frame_rate"
require "ddex/v20120404/ddexc/fulfillment_date"
require "ddex/v20120404/ddexc/fulfillment_date"
require "ddex/v20120404/ddexc/sampling_rate"
require "ddex/v20120404/ddexc/video_codec_type"

module DDEX module ERN module V341

class TechnicalVideoDetails < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "TechnicalVideoDetails"

      xml_accessor :technical_resource_details_reference, :from => "TechnicalResourceDetailsReference", :required => true

      xml_accessor :drm_platform_type, :from => "DrmPlatformType", :required => false

      xml_accessor :overall_bit_rate, :from => "OverallBitRate", :required => false

      xml_accessor :container_format, :from => "ContainerFormat", :required => false

      xml_accessor :video_codec_type, :from => "VideoCodecType", :required => false

      xml_accessor :video_bit_rate, :from => "VideoBitRate", :required => false

      xml_accessor :frame_rate, :from => "FrameRate", :required => false

      xml_accessor :image_height, :from => "ImageHeight", :required => false

      xml_accessor :image_width, :from => "ImageWidth", :required => false

      xml_accessor :aspect_ratio, :from => "AspectRatio", :required => false

      xml_accessor :color_depth, :from => "ColorDepth", :required => false

      xml_accessor :video_definition_type, :from => "VideoDefinitionType", :required => false

      xml_accessor :audio_codec_type, :from => "AudioCodecType", :required => false

      xml_accessor :audio_bit_rate, :from => "AudioBitRate", :required => false

      xml_accessor :number_of_audio_channels, :from => "NumberOfAudioChannels", :required => false

      xml_accessor :audio_sampling_rate, :from => "AudioSamplingRate", :required => false

      xml_accessor :audio_bits_per_sample, :from => "AudioBitsPerSample", :required => false

      xml_accessor :duration, :from => "Duration", :required => false

      xml_accessor :resource_processing_required, :from => "ResourceProcessingRequired", :required => false

      xml_accessor :usable_resource_duration, :from => "UsableResourceDuration", :required => false

      xml_accessor :preview?, :from => "IsPreview", :required => false

      xml_accessor :preview_details, :from => "PreviewDetails", :required => false

      xml_accessor :fulfillment_date, :from => "FulfillmentDate", :required => false

      xml_accessor :consumer_fulfillment_date, :from => "ConsumerFulfillmentDate", :required => false

      
      xml_accessor :files, :as => [], :from => "File", :required => false

      
      xml_accessor :file_availability_descriptions, :as => [], :from => "FileAvailabilityDescription", :required => false

      
      xml_accessor :fingerprints, :as => [], :from => "Fingerprint", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
