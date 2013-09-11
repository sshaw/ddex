module DDEX
  class VideoCodeType < SimpleElement
    include UserDefinedValue
    xml_accessor :version, :from => :attr
  end
end
