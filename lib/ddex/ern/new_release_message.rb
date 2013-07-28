require "ddex/ern/release_list"
require "ddex/ern/resource_list"

module DDEX
  module ERN
    class NewReleaseMessage < Element
      include Language

      xml_name "NewReleaseMessage"

      # TODO: get this from ERN.default_versoion, prob will have to override from_xml?      
      xml_namespaces :ernm => "http://ddex.net/xml/2010/ern-main/32"
      
      #xml_name "NewReleaseRecord"
      #xml_reader :publisher, :from => 'name', :in => 'publisher'

      xml_accessor :business_profile_version_id, :from => :attr
      xml_accessor :message_schema_version_id, :from => :attr
      xml_accessor :release_profile_version_id, :from => :attr

      xml_accessor :update_indicator
      xml_accessor :message_header, :from => "MessageHeader", :as => Header
      xml_accessor :resource_list, :from => "ResourceList", :as => ResourceList
      xml_accessor :release_list, :from => "ReleaseList", :as => ReleaseList
    end
  end
end
