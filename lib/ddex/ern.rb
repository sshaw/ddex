require "active_support/core_ext/module/attribute_accessors"
require "nokogiri"

module DDEX
  module ERN
    autoload :V32,  "ddex/ern/v32"
    autoload :V33,  "ddex/ern/v33"
    autoload :V34,  "ddex/ern/v34"
    autoload :V341, "ddex/ern/v341"
    autoload :V35,  "ddex/ern/v35"
    autoload :V351, "ddex/ern/v351"
    autoload :V36,  "ddex/ern/v36"
    autoload :V37,  "ddex/ern/v37"
    autoload :V38,  "ddex/ern/v38"
    autoload :V381,  "ddex/ern/v381"
    autoload :V382,  "ddex/ern/v382"

    ROOT_ELEMENT = "NewReleaseMessage".freeze
    VERSION_ATTR = "MessageSchemaVersionId".freeze

    DEFAULT_CONFIG  = {
      "V382" => {
        :schema => "http://ddex.net/xml/ern/382/release-notification.xsd",
        :version => "3.8.2",
        :message_schema_version_id => "ern/382"
      },

      "V381" => {
        :schema => "http://ddex.net/xml/ern/381/release-notification.xsd",
        :version => "3.8.1",
        :message_schema_version_id => "ern/381"
      },

      "V38" => {
        :schema => "http://ddex.net/xml/ern/38/release-notification.xsd",
        :version => "3.8",
        :message_schema_version_id => "ern/38"
      },

      "V37" => {
        :schema => "http://ddex.net/xml/ern/37/release-notification.xsd",
        :version => "3.7",
        :message_schema_version_id => "ern/37"
      },

      "V36" => {
        :schema => "http://ddex.net/xml/ern/36/release-notification.xsd",
        :version => "3.6",
        :message_schema_version_id => "ern/36"
      },

      "V351" => {
        :schema => "http://ddex.net/xml/ern/351/release-notification.xsd",
        :version => "3.5.1",
        :message_schema_version_id => "ern/351"
      },

      "V35" => {
        :schema => "http://ddex.net/xml/ern/35/release-notification.xsd",
        :version => "3.5",
        :message_schema_version_id => "ern/35"
      },

      "V341" => {
        :schema => "http://ddex.net/xml/ern/341/release-notification.xsd",
        :version => "3.4.1",
        :message_schema_version_id => "ern/341"
      },

      "V34" => {
        :schema => "http://ddex.net/xml/ern/34/release-notification.xsd",
        :version => "3.4",
        :message_schema_version_id => "ern/34"
      },

      "V33" => {
        :schema => "http://ddex.net/xml/2011/ern-main/33/ern-main.xsd",
        :version => "3.3",
        :message_schema_version_id => "2011/ern-main/33"
      },

      "V32" => {
        :schema => "http://ddex.net/xml/2010/ern-main/32/ern-main.xsd",
        :version => "3.2",
        :message_schema_version_id => "2010/ern-main/32"
      }
    }.freeze

    mattr_reader :config
    @@config = DEFAULT_CONFIG

    def self.supported_versions
      config.values.map { |cfg| cfg[:version].dup }.sort
    end

    def self.supports?(version)
      version = version.downcase.strip
      config.any? { |name,cfg| name == version || cfg[:version] == version || cfg[:message_schema_version_id] == version }
    end

    # options[:validate] ???
    def self.read(xml, options = nil)
      options ||= {}
      raise ArgumentError, "options must be a Hash" unless options.is_a?(Hash)

      doc   = parse(xml, options)
      ver   = options[:version] || doc.root[VERSION_ATTR]
      klass = load_version(ver)

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

      schema = schema_location(object, options[:schema])
      if schema
        node.add_namespace_definition(XML_SCHEMA_INSTANCE_PREFIX, XML_SCHEMA_INSTANCE_NS)
        node[XML_SCHEMA_INSTANCE_ATTR] = schema
      end

      doc = Nokogiri::XML::Document.new
      doc.root = node
      doc.to_xml(xmlopts)
    end

    private
    def self.schema_location(object, schema)
      # extract version from namespace e.g., DDEX::ERN::V36::NewReleaseMessage
      ver = object.class.name.split("::")[-2]
      return unless schema or config.include?(ver)

      # Check if it's "NS schema"
      if schema && schema.strip.include?(" ")
        schema
      else
        sprintf "%s %s", object.class.ns[1], schema || config[ver][:schema]
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

    def self.raise_unknown_version(version)
      message = "ERN version %s" % (version ? "'#{version}'" : "attribute missing")
      raise UnknownVersionError, message
    end

    def self.load_version(version)
      raise_unknown_version(version) if version.nil?

      # Some normalization
      v = version.strip.gsub(%r{//+}, "/").gsub(%r{\A/|/\Z}, "")
      klass, _ = config.find do |name, cfg|
        cfg[:message_schema_version_id] == v || cfg[:version] == v
      end
      raise_unknown_version(version) unless klass

      # >= 2.0 allows for one call
      DDEX::ERN.const_get(klass).const_get(ROOT_ELEMENT)
    rescue LoadError, NameError => e
      raise_unknown_version(version)
    end
  end
end
