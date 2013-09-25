require "roxml"
require "ddex/element"
require "ddex/content_element"
require "ddex/ern"

module DDEX
  class DDEXError < StandardError; end
  class UnknownVersionError < DDEXError; end
  class XMLLoadError < DDEXError; end
end
