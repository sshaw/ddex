require "active_support/core_ext/module/attribute_accessors"
require "nokogiri"

module DDEX
  module ERN

    ROOT_ELEMENT    = "NewReleaseMessage"
    VERSION_ATTR    = "MessageSchemaVersionId"

    DEFAULT_CONFIG  = {
      "3.6" => {
        :namespace => "http://ddex.net/xml/ern/36",
        :schema => "http://ddex.net/xml/ern/36/release-notification.xsd",
        :message_schema_version_id => "ern/36"
      },

      "3.5.1" => {
        :namespace => "http://ddex.net/xml/ern/351",
        :schema => "http://ddex.net/xml/ern/351/release-notification.xsd",
        :message_schema_version_id => "ern/351"
      },

      "3.4.1" => {
        :namespace => "http://ddex.net/xml/ern/341",
        :schema => "http://ddex.net/xml/ern/341/release-notification.xsd",
        :message_schema_version_id => "ern/341"
      },

      "3.4" => {
        :namespace => "http://ddex.net/xml/ern/34",
        :schema => "http://ddex.net/xml/ern/34/release-notification.xsd",
        :message_schema_version_id => "ern/34"
      },

      "3.2" => {
        :namespace => "http://ddex.net/xml/2010/ern-main/32",
        :schema => "http://ddex.net/xml/2010/ern-main/32/ern-main.xsd",
        :message_schema_version_id => "2010/ern-main/32"
      }
    }

    # Good enough for now
    DEFAULT_VERSION = DEFAULT_CONFIG.keys.sort { |a,b| b <=> a }.first

    mattr_accessor :default_version
    self.default_version = DEFAULT_VERSION

    mattr_reader :config
    @@config = DEFAULT_CONFIG

    # options[:validate] ???
    def self.read(xml, options = nil)
      options ||= {}
      raise ArgumentError, "options must be a Hash" unless options.is_a?(Hash)

      doc     = parse(xml, options)
      version = doc.root[VERSION_ATTR]
      config  = find_version(version)
      raise_unknown_version(version) unless config

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

    def self.write(object, options = nil)
      raise ArgumentError, "not a DDEX object" unless object.is_a?(DDEX::Element)

      options ||= {}
      raise ArgumentError, "options must be a Hash" unless options.is_a?(Hash)

      xmlopts = options.reject { |k, _| k == :schema }

      node = object.to_xml
      return node.to_xml(xmlopts) unless object.respond_to?(:message_schema_version_id) # Is it the root element?

      schema = schema_location(object.message_schema_version_id, options[:schema])
      if schema
        node.add_namespace_definition(XML_SCHEMA_INSTANCE_PREFIX, XML_SCHEMA_INSTANCE_NS)
        node[XML_SCHEMA_INSTANCE_ATTR] = schema
      end

      doc = Nokogiri::XML::Document.new
      doc.root = node
      doc.to_xml(xmlopts)
    end

    private
    def self.schema_location(id, schema)
      id = config[default_version][:message_schema_version_id] unless id or !config.include?(default_version)
      config = find_version(id)
      return schema unless config

      # Check if it's "NS schema"
      if schema && schema.include?(" ")
        schema
      else
        sprintf "%s %s", config[1][:namespace], schema || config[1][:schema]
      end
    end

    def self.parse(xml, options)
      xml = File.read(xml) if xml.is_a?(String) and xml !~ /\A\s*<[?\w]/
      Nokogiri::XML(xml, nil, options[:encoding]) { |cfg| cfg.strict }
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
