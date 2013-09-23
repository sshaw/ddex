require "roxml"
require "ddex/element"

require "ddex/ern/v341/resource_group"
require "ddex/ern/v341/resource_group_content_item"
require "ddex/v20120404/ddexc/artist"
require "ddex/v20120404/ddexc/indirect_resource_contributor"
require "ddex/v20120404/ddexc/release_id"
require "ddex/v20120404/ddexc/resource_contributor"
require "ddex/v20120404/ddexc/resource_group_resource_reference_list"
require "ddex/v20120404/ddexc/title"

module DDEX module ERN module V341

class ResourceGroup < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "ResourceGroup"

      
      xml_accessor :titles, :as => [], :from => "Title", :required => false

      xml_accessor :sequence_number, :from => "SequenceNumber", :required => false

      
      xml_accessor :display_artists, :as => [], :from => "DisplayArtist", :required => false

      
      xml_accessor :resource_contributors, :as => [], :from => "ResourceContributor", :required => false

      
      xml_accessor :indirect_resource_contributors, :as => [], :from => "IndirectResourceContributor", :required => false

      
      xml_accessor :resource_groups, :as => [], :from => "ResourceGroup", :required => false

      xml_accessor :resource_group_resource_reference_list, :from => "ResourceGroupResourceReferenceList", :required => false

      
      xml_accessor :resource_group_content_items, :as => [], :from => "ResourceGroupContentItem", :required => false

      xml_accessor :release_id, :from => "ReleaseId", :required => false

      xml_accessor :resource_group_release_reference, :from => "ResourceGroupReleaseReference", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
