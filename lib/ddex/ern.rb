require "active_support/core_ext/module/attribute_accessors"
require "nokogiri"

module DDEX
  module ERN
    DEFAULT_VERSION = "3.4.1"
    DEFAULT_CONFIG = {
      "3.6" => {
        :namespace => "ern=http://ddex.net/xml/ern/36",
        :schema_location => "http://ddex.net/xml/ern/36/release-notification.xsd",
        :message_schema_version_id => "ern/36"
      },

      "3.5.1" => {
        :namespace => "ern=http://ddex.net/xml/ern/351",
        :schema_location => "http://ddex.net/xml/ern/351/release-notification.xsd",
        :message_schema_version_id => "ern/351"
      },

      "3.4.1" => {
        :namespace => "ern=http://ddex.net/xml/ern/341",
        :schema_location => "http://ddex.net/xml/ern/341/release-notification.xsd",
        :message_schema_version_id => "ern/341"
      },

      "3.4" => {
        :namespace => "ern=http://ddex.net/xml/ern/34",
        :schema_location => "http://ddex.net/xml/ern/34/release-notification.xsd",
        :message_schema_version_id => "ern/34"
      },

      "3.2" => {
        :namespace => "ernm=http://ddex.net/xml/2010/ern-main/32",
        :schema_location => "http://ddex.net/xml/2010/ern-main/32/ern-main.xsd",
        :message_schema_version_id => "2010/ern-main/32"
      }
    }

    mattr_accessor :version
    self.version = DEFAULT_VERSION

    mattr_reader :config
    @@config = DEFAULT_CONFIG

    # options[:validate] ???
    def self.read(xml, options = {})
      doc     = parse(xml)
      version = find_version(doc.root["MessageSchemaVersionId"])
      klass = load_version(version[0])

      begin
        klass.from_xml(doc)
      rescue NoMethodError => e         # Yes, fo real... this is from ROXML
        raise unless e.name == :root    # It's legit
        raise XMLLoadError, "XML is not well-formed"
      rescue ROXML::XML::Error => e
        raise XMLLoadError, "cannot create DDEX object: #{e}"
      end
    end

    def self.write(object, options = {})
      raise ArgumentError, "not a DDEX object" unless object.is_a?(DDEX::Element)

      # If it's not the root element we don't care about the version stuff
      return object.to_xml unless object.respond_to(:mesage_schema_version_id)

      v = object.message_schema_version_id 
      v = self.class.version if v.nil? or v.strip.empty?
      cfg = find_version(v)
      
      # do something with NS
    end

    private
    def self.parse(xml)
      xml = File.read(xml) if xml.is_a?(String) and xml !~ /\A\s*<[?\w]/
      Nokogiri::XML(xml) { |cfg| cfg.strict }
    rescue IOError, SystemCallError => e
      raise XMLLoadError, "cannot load XML: #{e}"
    rescue Nokogiri::XML::SyntaxError => e
      raise XMLLoadError, "XML parsing error: #{e}"
    end

    def self.find_version(want)
      version = config.find { |v, cfg| cfg[:message_schema_version_id] == want }
      raise UnknownVersionError, "ERN version '#{want}'" unless version # use default if none found?
      version
    end

    def self.load_version(version)
      v = "v#{version.tr(".", "")}"
      klass = v.upcase

      ## 2.0 allows for one call
      loader = lambda { DDEX::ERN.const_get(klass).const_get("NewReleaseMessage") }
      return loader[] if DDEX::ERN.const_defined?(klass)

      root = File.dirname(File.expand_path(__FILE__))
      Dir["#{root}/ern/#{v}/*.rb"].each { |path| require path }

      loader[]
    rescue LoadError, NameError => e
      raise UnknownVersionError, "ERN version #{version}"
    end
  end
end
