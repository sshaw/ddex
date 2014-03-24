require "active_support/core_ext/module/attribute_accessors"
require "nokogiri"

module DDEX
  module ERN
    autoload :V33,  "ddex/ern/v33"
    autoload :V34,  "ddex/ern/v34"
    autoload :V341, "ddex/ern/v341"
    autoload :V35,  "ddex/ern/v35"
    autoload :V351, "ddex/ern/v351"
    autoload :V36,  "ddex/ern/v36"

    ROOT_ELEMENT = "NewReleaseMessage"
    VERSION_ATTR = "MessageSchemaVersionId"

    DEFAULT_CONFIG  = {
      "ern/36" => {
        :schema => "http://ddex.net/xml/ern/36/release-notification.xsd",
        :version => "3.6"
      },

      "ern/351" => {
        :schema => "http://ddex.net/xml/ern/351/release-notification.xsd",
        :version => "3.5.1"
      },

      "ern/35" => {
        :schema => "http://ddex.net/xml/ern/35/release-notification.xsd",
        :version => "3.5"
      },

      "ern/341" => {
        :schema => "http://ddex.net/xml/ern/341/release-notification.xsd",
        :version => "3.4.1"
      },

      "ern/34" => {
        :schema => "http://ddex.net/xml/ern/34/release-notification.xsd",
        :version => "3.4"
      },

      "2011/ern-main/33" => {
        :schema => "http://ddex.net/xml/2011/ern-main/33/ern-main.xsd",
        :version => "3.3"
      }
    }

    mattr_reader :config
    @@config = DEFAULT_CONFIG

    def self.supported_versions
      config.values.map { |cfg| cfg[:version].dup }.sort
    end

    def self.supports?(version)
      version = version.downcase.strip
      config.any? { |name,cfg| name == version || cfg[:version] == version }
    end

    # options[:validate] ???
    def self.read(xml, options = nil)
      options ||= {}
      raise ArgumentError, "options must be a Hash" unless options.is_a?(Hash)

      doc = parse(xml, options)
      ver = doc.root[VERSION_ATTR]
      raise_unknown_version(ver) unless config.include?(ver)

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
      return unless schema or config.include?(object.message_schema_version_id)

      # Check if it's "NS schema"
      if schema && schema.strip.include?(" ")
        schema
      else
        sprintf "%s %s", object.class.ns[1], schema || config[object.message_schema_version_id][:schema]
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
      v = $1 if version =~ %r{/(\d+)\z}
      v = "v#{v}"
      klass = v.upcase

      # >= 2.0 allows for one call
      DDEX::ERN.const_get(klass).const_get(ROOT_ELEMENT)
    rescue LoadError, NameError => e
      raise_unknown_version(version)
    end
  end
end
