require "active_support/core_ext/module/attribute_accessors"
require "nokogiri"

module DDEX
  module ERN
    DEFAULT_VERSION = "3.2"
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
    
    # take a path, doc, IO ...
    def self.read(path, options = {})
      # check IO perf.
      #version = config.find { |v, cfg| cfg[:message_schema_version_id] == doc.root["MessageSchemaVersionId"] }
      raise DDEXError, "unknown DDEX version '#{doc.root["MessageSchemaVersionId"]}'" unless version
      klass = load_version(version[0])

      begin 
        klass.from_xml(File.read(path))
      rescue => e
        raise DDEXError, "failed to load #{path}: #{e}"
      end
    end

    def self.write(object, options = {})
      raise ArgumentError, "not a DDEX object" unless object.is_a?(DDEX::Element)
      klass = load_version(version[0])
      # ...
    end

    private
    def self.load_version(version)
      v = "v#{version.tr(".", "")}"
      klass = "#{v.upcase}" #::NewReleaseMessage"
      return DDEX::ERN.const_get(klass) if DDEX::ERN.const_defined?(klass)

      root = File.dirname(File.expand_path(__FILE__))
      Dir["#{root}/ern/#{v}/*.rb"].each { |path| require path }

      DDEX::ERN.const_get(klass).const_get("NewReleaseMessage")
    rescue LoadError, NameError => e
      raise DDEXError, "failed to load ERN v#{version}: #{e}"
    end
  end
end
