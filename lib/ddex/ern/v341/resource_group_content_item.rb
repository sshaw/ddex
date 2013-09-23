require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/linked_release_resource_reference"
require "ddex/v20120404/ddexc/release_id"
require "ddex/v20120404/ddexc/release_resource_reference"
require "ddex/v20120404/ddexc/resource_type"

module DDEX module ERN module V341

class ResourceGroupContentItem < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "ResourceGroupContentItem"

      xml_accessor :sequence_number, :from => "SequenceNumber", :required => false

      xml_accessor :sequence_sub_number, :from => "SequenceSubNumber", :required => false

      
      xml_accessor :resource_types, :as => [], :from => "ResourceType", :required => false

      xml_accessor :release_resource_reference, :from => "ReleaseResourceReference", :required => true

      
      xml_accessor :linked_release_resource_references, :as => [], :from => "LinkedReleaseResourceReference", :required => false

      xml_accessor :release_id, :from => "ReleaseId", :required => false

      xml_accessor :resource_group_content_item_release_reference, :from => "ResourceGroupContentItemReleaseReference", :required => false

      xml_accessor :duration, :from => "Duration", :required => false

      xml_accessor :hidden_resource?, :from => "IsHiddenResource", :required => false

      xml_accessor :bonus_resource?, :from => "IsBonusResource", :required => false



  
end

end end end
