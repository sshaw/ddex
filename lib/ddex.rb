require "roxml"
require "ddex/element"
require "ddex/content_element"
require "ddex/ern"

module DDEX
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
