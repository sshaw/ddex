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
    autoload :V371,  "ddex/ern/v371"
    autoload :V37D2,  "ddex/ern/v37_d2"
    autoload :V37,  "ddex/ern/v37"
    autoload :V38,  "ddex/ern/v38"
    autoload :V381,  "ddex/ern/v381"
    autoload :V382,  "ddex/ern/v382"
    autoload :V383,  "ddex/ern/v383"
    autoload :V41,  "ddex/ern/v41"
    autoload :V411,  "ddex/ern/v411"
    autoload :V42,  "ddex/ern/v42"

    ROOT_ELEMENT = "NewReleaseMessage".freeze
    VERSION_ATTR = "MessageSchemaVersionId".freeze

    DEFAULT_CONFIG  = {
      "V42" => {
        :schema => "http://ddex.net/xml/ern/42/release-notification.xsd",
        :version => "4.2",
        :message_schema_version_id => "ern/42"
      },

      "V411" => {
        :schema => "http://service.ddex.net/xml/ern/411/release-notification.xsd",
        :version => "4.1.1",
        :message_schema_version_id => "ern/411"
      },

      "V41" => {
        :schema => "http://service.ddex.net/xml/ern/41/release-notification.xsd",
        :version => "4.1",
        :message_schema_version_id => "ern/41"
      },

      "V383" => {
        :schema => "http://ddex.net/xml/ern/383/release-notification.xsd",
        :version => "3.8.3",
        :message_schema_version_id => "ern/383"
      },

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

      "V371" => {
        :schema => "http://ddex.net/xml/ern/371/release-notification.xsd",
        :version => "3.7.1",
        :message_schema_version_id => "ern/371"
      },

      "V37D2" => {
        :schema => "http://ddex.net/xml/ern/37D2/release-notification.xsd",
        :version => "3.7D2",
        :message_schema_version_id => "ern/37D2"
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

    class << self
      def supported_versions
        config.values.map { |cfg| cfg[:version].dup }.sort
      end

      def supports?(version)
        version = version.to_s.downcase.strip
        config.any? { |name,cfg| name == version || cfg[:version] == version || cfg[:message_schema_version_id] == version }
      end

      # options[:validate] ???
      def read(xml, options = nil)
        options ||= {}
        raise ArgumentError, "options must be a Hash" unless options.is_a?(Hash)

        doc   = parse(xml, options)
        ver   = options[:version] || find_version(doc)
        klass = load_version(ver)

        begin
          klass.from_xml(doc)
        rescue NoMethodError => e         # Yes, 4 real... this is from ROXML
          raise unless e.name == :root    # It's legit
          raise XMLLoadError, "XML is not well-formed"
        # This is a subclass of Exception(!) so we must name it
        rescue ROXML::RequiredElementMissing => e
          raise XMLLoadError, "missing required element: #{e}"
        end
      end

      def write(object, options = nil)
        raise ArgumentError, "not a DDEX object" unless object.is_a?(DDEX::Element)

        options ||= {}
        raise ArgumentError, "options must be a Hash" unless options.is_a?(Hash)

        xmlopts = options.reject { |k, _| k == :schema }

        node = object.to_xml
        return node.to_xml(xmlopts) unless object.class.name.demodulize == ROOT_ELEMENT

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

      def schema_location(object, schema)
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

      def find_version(doc)
        return doc.root[VERSION_ATTR] if doc.root[VERSION_ATTR]

        # Versions >= 4 don't have VERSION_ATTR so we resort to looking at namespaces.
        # For example, given: http://ddex.net/xml/ern/41
        # We'll try to match the end: "ern/41" or "ern/41/"
        names = doc.collect_namespaces.values
        version = config.values.find do |cfg|
          names.any? { |name| name =~ %r|#{ Regexp.quote(cfg[:message_schema_version_id]) }/?\z|i }
        end

        return unless version
        version[:message_schema_version_id]
      end

      def parse(xml, options)
        xml = File.read(xml) if xml.is_a?(String) and xml !~ /\A\s*<[?\w]/
        Nokogiri::XML(xml, nil, options[:encoding]) { |cfg| cfg.strict }
      # ArgumentError means there was a problem with types, expected an int, got a str
      rescue IOError, SystemCallError, ArgumentError => e
        raise XMLLoadError, "cannot load XML: #{e}"
      rescue Nokogiri::XML::SyntaxError => e
        raise XMLLoadError, "XML parsing error: #{e}"
      end

      def raise_unknown_version(version)
        message = "ERN version %s" % (version ? "'#{version}' is unsupported" : "attribute missing")
        raise UnknownVersionError, message
      end

      def load_version(version)
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
end
