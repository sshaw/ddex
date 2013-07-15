module DDEX
  # Base class for resources (Image, SoundRecording, ...)
  class Resource < Element
    xml_accessor :resource_reference, :from => "ResourceReference"

    xml_accessor :hidden_resource?, :from => "IsHiddenResource"
    xml_accessor :bonus_resource?, :from => "IsBonusResource"
  end
end
