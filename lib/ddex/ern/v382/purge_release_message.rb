#
# Auto-generated by jaxb2ruby v0.0.1 on 2017-03-14 23:25:46 +0000
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v382/message_header"
require "ddex/ern/v382/purged_release"

module DDEX module ERN module V382  # :nodoc: all

class DDEX::ERN::V382::PurgeReleaseMessage < Element
  include ROXML

    setns "ns1", "http://ddex.net/xml/ern/382"

  xml_name "PurgeReleaseMessage"

      xml_accessor :message_header, :as => DDEX::ERN::V382::MessageHeader, :from => "MessageHeader", :required => true
      xml_accessor :purged_release, :as => DDEX::ERN::V382::PurgedRelease, :from => "PurgedRelease", :required => true



      xml_accessor :message_schema_version_id, :from => "@MessageSchemaVersionId", :required => true


      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false



end

end end end
