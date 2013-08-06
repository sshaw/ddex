module DDEX
  class DRMPlatformType < SimpleElement
    include UserDefinedValue
    xml_accessor :version, :from => :attr
  end
end
