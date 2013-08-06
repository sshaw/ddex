require "ddex/user_defined_value"

module DDEX
  class ImageCodecType < SimpleElement
    include UserDefinedValue
    xml_accessor :version, :from => :attr
  end
end
