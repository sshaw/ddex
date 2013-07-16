require "ddex/ern/resource_list"

module DDEX
  module ERN
    class NewReleaseMessage < Element
      xml_name "NewReleaseMessage"

      # TODO: get this from ERN.default_versoion, prob will have to override from_xml?      
      xml_namespaces :ernm => "http://ddex.net/xml/2010/ern-main/32"
      
      #xml_name "NewReleaseRecord"
      #xml_reader :publisher, :from => 'name', :in => 'publisher'

      xml_accessor :message_schema_version_id, :from => "@MessageSchemaVersionId"

      xml_accessor :update_indicator, :from => "UpdateIndicator"
      xml_accessor :message_header, :from => "MessageHeader", :as => Header
      xml_accessor :resources, :from => "ResourceList", :as => ResourceList
    end
  end
end
