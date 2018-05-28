#
# Auto-generated by jaxb2ruby v0.0.1 on 2018-03-01 07:52:38 +0000
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v371/artist"
require "ddex/ern/v371/carrier_type"
require "ddex/ern/v371/detailed_resource_contributor"
require "ddex/ern/v371/extended_resource_group_content_item"
require "ddex/ern/v371/indirect_resource_contributor"
require "ddex/ern/v371/release_id"
require "ddex/ern/v371/resource_group"
require "ddex/ern/v371/resource_group_resource_reference_list"
require "ddex/ern/v371/title"

module DDEX module ERN module V371  # :nodoc: all

class ResourceGroup < Element
  include ROXML


  xml_name "ns1:ResourceGroup"

      xml_accessor :titles, :as => [Title], :from => "Title", :required => false
      xml_accessor :sequence_number, :as => Integer, :from => "SequenceNumber", :required => false
      xml_accessor :display_artists, :as => [Artist], :from => "DisplayArtist", :required => false
      xml_accessor :display_conductors, :as => [Artist], :from => "DisplayConductor", :required => false
      xml_accessor :display_composers, :as => [Artist], :from => "DisplayComposer", :required => false
      xml_accessor :resource_contributors, :as => [DetailedResourceContributor], :from => "ResourceContributor", :required => false
      xml_accessor :indirect_resource_contributors, :as => [IndirectResourceContributor], :from => "IndirectResourceContributor", :required => false
      xml_accessor :carrier_types, :as => [CarrierType], :from => "CarrierType", :required => false
      xml_accessor :resource_groups, :as => [ResourceGroup], :from => "ResourceGroup", :required => false
      xml_accessor :resource_group_resource_reference_list, :as => ResourceGroupResourceReferenceList, :from => "ResourceGroupResourceReferenceList", :required => false
      xml_accessor :resource_group_content_items, :as => [ExtendedResourceGroupContentItem], :from => "ResourceGroupContentItem", :required => false
      xml_accessor :release_id, :as => ReleaseId, :from => "ReleaseId", :required => false
      xml_accessor :resource_group_release_reference, :from => "ResourceGroupReleaseReference", :required => false


  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  

end

end end end
