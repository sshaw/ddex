require "active_support/core_ext/module/attribute_accessors"

require "ddex/core"
require "ddex/ern/consumer_fulfillment_date"
require "ddex/ern/deal_list"
require "ddex/ern/file_availability_description"
require "ddex/ern/image"
require "ddex/ern/image_details_by_territory"
require "ddex/ern/image_height"
require "ddex/ern/image_width"
require "ddex/ern/new_release_message"
require "ddex/ern/preview_details"
require "ddex/ern/release_deal"
require "ddex/ern/sound_recording"
require "ddex/ern/sound_recording_details"
require "ddex/ern/technical_image_details"
require "ddex/ern/technical_sound_recording_details"

module DDEX
  module ERN
    DEFAULT_VERSION = "3.2"
    DEFAULT_CONFIG = {
      "3.5.1" => {
        :namespace => "ern=http://ddex.net/xml/ern/351",
        :schema_location => "http://ddex.net/xml/ern/351/release-notification.xsd",
        :message_schema_version_id => "ern/351"
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

    def self.read(path, options = {})
    end

    def self.write(object, options = {})
    end
  end
end
