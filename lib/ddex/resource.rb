module DDEX
  # Base class for resources (Image, SoundRecording, ...)
  class Resource < Element
    xml_accessor :bonus_resource?, :from => "IsBonusResource"
    xml_accessor :hidden_resource?, :from => "IsHiddenResource"
    xml_accessor :resource_reference, :from => "ResourceReference"
  end
end
