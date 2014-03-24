require "roxml"
require "ddex/element"

module DDEX
  autoload :ERN, "ddex/ern"

  XML_SCHEMA_INSTANCE_PREFIX = "xsi"
  XML_SCHEMA_INSTANCE_NS     = "http://www.w3.org/2001/XMLSchema-instance"
  XML_SCHEMA_INSTANCE_ATTR   = "#{XML_SCHEMA_INSTANCE_PREFIX}:schemaLocation"

  SPECS = %w[ERN]

  class DDEXError < StandardError; end
  class UnknownVersionError < DDEXError; end
  class XMLLoadError < DDEXError; end

  def self.supported_versions
    SPECS.flat_map do |spec|
      klass = const_get(spec)
      klass.supported_versions.map { |v| "#{spec} #{v}" }
    end
  end

  def self.supports?(name)
    SPECS.any? { |spec| const_get(spec).supports?(name) }
  end

  # TODO: figure out what top level spec...
  def self.read(xml, options = nil)
    DDEX::ERN.read(xml, options)
  end

  def self.write(xml, options = nil)
    DDEX::ERN.write(xml, options)
  end

  protected
  def require_standard(name, version)
    root = File.dirname(File.expand_path(__FILE__))
    Dir["#{root}/ddex/#{name.downcase}/v#{ version.downcase.tr(".", "") }/*.rb"].each { |path| require path }
  end
end
