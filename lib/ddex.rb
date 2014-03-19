require "roxml"
require "ddex/element"
require "ddex/ern"

module DDEX
  XML_SCHEMA_INSTANCE_PREFIX = "xsi"
  XML_SCHEMA_INSTANCE_NS     = "http://www.w3.org/2001/XMLSchema-instance"
  XML_SCHEMA_INSTANCE_ATTR   = "#{XML_SCHEMA_INSTANCE_PREFIX}:schemaLocation"

  class DDEXError < StandardError; end
  class UnknownVersionError < DDEXError; end
  class XMLLoadError < DDEXError; end

  # TODO: figure out what top level spec...
  def self.read(xml, options = nil)
    DDEX::ERN.read(xml, options)
  end

  def self.write(xml, options = nil)
    DDEX::ERN.write(xml, options)
  end
end
