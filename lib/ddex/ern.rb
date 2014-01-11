require "active_support/core_ext/module/attribute_accessors"
require "nokogiri"

module DDEX
  module ERN

    XML_SCHEMA_INSTANCE_PREFIX = "xsi"
    XML_SCHEMA_INSTANCE_NS     = "http://www.w3.org/2001/XMLSchema-instance"
    XML_SCHEMA_INSTANCE_ATTR   = "#{XML_SCHEMA_INSTANCE_PREFIX}:schemaLocation"

    ROOT_ELEMENT    = "NewReleaseMessage"
    VERSION_ATTR    = "MessageSchemaVersionId"

    DEFAULT_VERSION = "3.4.1"
    DEFAULT_CONFIG  = {
      "3.6" => {
        :schema => "http://ddex.net/xml/ern/36/release-notification.xsd",
        :message_schema_version_id => "ern/36"
      },

      "3.5.1" => {
        :schema => "http://ddex.net/xml/ern/351/release-notification.xsd",
        :message_schema_version_id => "ern/351"
      },

      "3.4.1" => {
        :schema => "http://ddex.net/xml/ern/341/release-notification.xsd",
        :message_schema_version_id => "ern/341"
      },

      "3.4" => {
        :schema => "http://ddex.net/xml/ern/34/release-notification.xsd",
        :message_schema_version_id => "ern/34"
      },

      "3.2" => {
        :schema => "http://ddex.net/xml/2010/ern-main/32/ern-main.xsd",
        :message_schema_version_id => "2010/ern-main/32"
      }
    }

    mattr_accessor :version
    self.version = DEFAULT_VERSION

    mattr_reader :config
    @@config = DEFAULT_CONFIG

    # options[:validate] ???
    def self.read(xml, options = nil)
      options ||= {}
      raise ArgumentError, "options must be a Hash" unless options.is_a?(Hash)

      doc     = parse(xml)
      version = doc.root[VERSION_ATTR]
      config  = find_version(version)
      raise_unknown_version(version) unless config # options[:force] ?

      klass = load_version(config[0])

      begin
        klass.from_xml(doc)
      rescue NoMethodError => e         # Yes, fo real... this is from ROXML
        raise unless e.name == :root    # It's legit
        raise XMLLoadError, "XML is not well-formed"
      # This is a subclass of Exception(!) so we must name it
      rescue ROXML::RequiredElementMissing => e
        raise XMLLoadError, "missing required element: #{e}"
      end
    end

    # TODO: format optopns
    def self.write(object, options = nil)
      raise ArgumentError, "not a DDEX object" unless object.is_a?(DDEX::Element)

      options ||= {}
      raise ArgumentError, "options must be a Hash" unless options.is_a?(Hash)

      doc = object.to_xml
      return doc.to_s unless object.respond_to?(:message_schema_version_id) # Is it the root element

      schema = options[:schema]
      unless schema
        config = find_version(object.message_schema_version_id)
        schema = config[1][:schema] if config
      end

      if schema
        # TODO: if !schema.start_with?("http") set up "NS Location" attr
        doc.add_namespace_definition(XML_SCHEMA_INSTANCE_PREFIX, XML_SCHEMA_INSTANCE_NS)
        doc[XML_SCHEMA_INSTANCE_ATTR] = schema
      end

      doc.to_s
    end

    private
    def self.parse(xml)
      xml = File.read(xml) if xml.is_a?(String) and xml !~ /\A\s*<[?\w]/
      Nokogiri::XML(xml) { |cfg| cfg.strict }
    # ArgumentError means there was a problem with types, expected an int, got a str
    rescue IOError, SystemCallError, ArgumentError => e
      raise XMLLoadError, "cannot load XML: #{e}"
    rescue Nokogiri::XML::SyntaxError => e
      raise XMLLoadError, "XML parsing error: #{e}"
    end

    def self.find_version(want)
      config.find { |v, cfg| cfg[:message_schema_version_id] == want }
    end

    def self.raise_unknown_version(version)
      message = "ERN version %s" % (version ? "'#{version}'" : "attribute missing")
      raise UnknownVersionError, message
    end

    def self.load_version(version)
      v = "v#{version.tr(".", "")}"
      klass = v.upcase

      ## 2.0 allows for one call
      loader = lambda { DDEX::ERN.const_get(klass).const_get(ROOT_ELEMENT) }
      return loader[] if DDEX::ERN.const_defined?(klass)

      root = File.dirname(File.expand_path(__FILE__))
      Dir["#{root}/ern/#{v}/*.rb"].each { |path| require path }

      loader[]
    rescue LoadError, NameError => e
      raise_unknown_version(version)
    end
  end
end
