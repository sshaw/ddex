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

require "ddex/ern/v371/aspect_ratio"
require "ddex/ern/v371/audio_codec_type"
require "ddex/ern/v371/bit_rate"
require "ddex/ern/v371/container_format"
require "ddex/ern/v371/description"
require "ddex/ern/v371/drm_platform_type"
require "ddex/ern/v371/extent"
require "ddex/ern/v371/file"
require "ddex/ern/v371/fingerprint"
require "ddex/ern/v371/frame_rate"
require "ddex/ern/v371/fulfillment_date"
require "ddex/ern/v371/sampling_rate"
require "ddex/ern/v371/sound_recording_preview_details"
require "ddex/ern/v371/video_codec_type"

module DDEX module ERN module V371  # :nodoc: all

class TechnicalVideoDetails < Element
  include ROXML


  xml_name "ns1:TechnicalVideoDetails"

      xml_accessor :technical_resource_details_reference, :from => "TechnicalResourceDetailsReference", :required => true
      xml_accessor :drm_platform_type, :as => DrmPlatformType, :from => "DrmPlatformType", :required => false
      xml_accessor :overall_bit_rate, :as => BitRate, :from => "OverallBitRate", :required => false
      xml_accessor :container_format, :as => ContainerFormat, :from => "ContainerFormat", :required => false
      xml_accessor :video_codec_type, :as => VideoCodecType, :from => "VideoCodecType", :required => false
      xml_accessor :video_bit_rate, :as => BitRate, :from => "VideoBitRate", :required => false
      xml_accessor :frame_rate, :as => FrameRate, :from => "FrameRate", :required => false
      xml_accessor :image_height, :as => Extent, :from => "ImageHeight", :required => false
      xml_accessor :image_width, :as => Extent, :from => "ImageWidth", :required => false
      xml_accessor :aspect_ratio, :as => AspectRatio, :from => "AspectRatio", :required => false
      xml_accessor :color_depth, :as => Integer, :from => "ColorDepth", :required => false
      xml_accessor :video_definition_type, :from => "VideoDefinitionType", :required => false
      xml_accessor :audio_codec_type, :as => AudioCodecType, :from => "AudioCodecType", :required => false
      xml_accessor :audio_bit_rate, :as => BitRate, :from => "AudioBitRate", :required => false
      xml_accessor :number_of_audio_channels, :as => Integer, :from => "NumberOfAudioChannels", :required => false
      xml_accessor :audio_sampling_rate, :as => SamplingRate, :from => "AudioSamplingRate", :required => false
      xml_accessor :audio_bits_per_sample, :as => Integer, :from => "AudioBitsPerSample", :required => false
      xml_accessor :duration, :from => "Duration", :required => false
      xml_accessor :resource_processing_required?, :from => "ResourceProcessingRequired", :required => false
      xml_accessor :usable_resource_duration, :from => "UsableResourceDuration", :required => false
      xml_accessor :preview?, :from => "IsPreview", :required => false
      xml_accessor :preview_details, :as => SoundRecordingPreviewDetails, :from => "PreviewDetails", :required => false
      xml_accessor :fulfillment_date, :as => FulfillmentDate, :from => "FulfillmentDate", :required => false
      xml_accessor :consumer_fulfillment_date, :as => FulfillmentDate, :from => "ConsumerFulfillmentDate", :required => false
      xml_accessor :files, :as => [File], :from => "File", :required => false
      xml_accessor :file_availability_descriptions, :as => [Description], :from => "FileAvailabilityDescription", :required => false
      xml_accessor :fingerprints, :as => [Fingerprint], :from => "Fingerprint", :required => false


  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  

end

end end end
