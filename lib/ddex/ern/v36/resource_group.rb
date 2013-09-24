require "roxml"
require "ddex/element"

require "ddex/ern/v36/artist"
require "ddex/ern/v36/artist"
require "ddex/ern/v36/artist"
require "ddex/ern/v36/carrier_type"
require "ddex/ern/v36/indirect_resource_contributor"
require "ddex/ern/v36/release_id"
require "ddex/ern/v36/resource_contributor"
require "ddex/ern/v36/resource_group"
require "ddex/ern/v36/resource_group_content_item"
require "ddex/ern/v36/resource_group_resource_reference_list"
require "ddex/ern/v36/title"

module DDEX module ERN module V36

class ResourceGroup < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "ResourceGroup"

      
      xml_accessor :titles, :as => [DDEX::ERN::V36::Title], :from => "Title", :required => false

      xml_accessor :sequence_number, :as => Integer, :from => "SequenceNumber", :required => false

      
      xml_accessor :display_artists, :as => [DDEX::ERN::V36::Artist], :from => "DisplayArtist", :required => false

      
      xml_accessor :display_conductors, :as => [DDEX::ERN::V36::Artist], :from => "DisplayConductor", :required => false

      
      xml_accessor :display_composers, :as => [DDEX::ERN::V36::Artist], :from => "DisplayComposer", :required => false

      
      xml_accessor :resource_contributors, :as => [DDEX::ERN::V36::ResourceContributor], :from => "ResourceContributor", :required => false

      
      xml_accessor :indirect_resource_contributors, :as => [DDEX::ERN::V36::IndirectResourceContributor], :from => "IndirectResourceContributor", :required => false

      
      xml_accessor :carrier_types, :as => [DDEX::ERN::V36::CarrierType], :from => "CarrierType", :required => false

      
      xml_accessor :resource_groups, :as => [DDEX::ERN::V36::ResourceGroup], :from => "ResourceGroup", :required => false

      xml_accessor :resource_group_resource_reference_list, :as => DDEX::ERN::V36::ResourceGroupResourceReferenceList, :from => "ResourceGroupResourceReferenceList", :required => false

      
      xml_accessor :resource_group_content_items, :as => [DDEX::ERN::V36::ResourceGroupContentItem], :from => "ResourceGroupContentItem", :required => false

      xml_accessor :release_id, :as => DDEX::ERN::V36::ReleaseId, :from => "ReleaseId", :required => false

      xml_accessor :resource_group_release_reference, :from => "ResourceGroupReleaseReference", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
