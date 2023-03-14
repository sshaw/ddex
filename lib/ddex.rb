require "roxml"
require "ddex/element"

module DDEX
  autoload :ERN, "ddex/ern"
  autoload :ECHO, "ddex/echo"

  XML_SCHEMA_INSTANCE_PREFIX = "xsi".freeze
  XML_SCHEMA_INSTANCE_NS     = "http://www.w3.org/2001/XMLSchema-instance".freeze
  XML_SCHEMA_INSTANCE_ATTR   = "#{XML_SCHEMA_INSTANCE_PREFIX}:schemaLocation".freeze

  SPECS = %w[ERN ECHO]

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

  ##
  # Read DDEX metadata
  #
  # === Parameters
  #
  # [xml     (String|IO|path)] The XML to read
  # [options (Hash)] Options to control reading
  #
  # === Options
  #
  # [:encoding] Parse +xml+ using the given encoding
  # [:version]  Parse +xml+ as the given version, this must be a +MessageSchemaVersionId+ in +SPEC/VERSION+ format;
  #		by default this will be taken from the +MessageSchemaVersionId+ attribute of the root element
  # === Returns
  #
  # [DDEX::Element subclass] A root element, as defined by the DDEX spec of +xml+ or the +:version+ option
  #
  # === Errors
  #
  # [DDEX::XMLLoadError] Problem parsing the XML or a required element is missing
  # [DDEX::UnknownVersionError] The given or detected spec version is not known or supported
  # [ArgumentError] +options+ is not a +Hash+ or is not +nil+

  def self.read(xml, options = nil)
    # TODO: figure out what top level spec...
    DDEX::ERN.read(xml, options)
  end

  ##
  # Turn a DDEX object into an XML string. You can also turn the object into a +Hash+ via #to_hash.
  #
  # === Parameters
  #
  # [xml     (DDEX::Element subclass)] The object to create XML from
  # [options (Hash)] Options to control writing
  #
  # === Options
  #
  # [:schema] Schema URI to use in the XSI schemaLocation attribute, defaults to <code>DDEX::NAME.config["VER"][:schema]</code>
  #           where +NAME+ is the spec name and +VER+ is the version. This is only used if +xml+ is a the root node of a spec.
  #
  # === Returns
  #
  # [String] The XML
  #
  # === Errors
  #
  # [ArgumentError] +options+ is not a +Hash+ or is not +nil+, or +xml+ is not a subclass of <code>DDEX::Element</code>

  def self.write(xml, options = nil)
    DDEX::ERN.write(xml, options)
  end

  protected
  def require_standard(name, version)
    root = File.dirname(File.expand_path(__FILE__))
    Dir["#{root}/ddex/#{name.downcase}/v#{ version.downcase.tr(".", "") }/*.rb"].each { |path| require path }
  end
end
