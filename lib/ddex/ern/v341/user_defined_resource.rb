require "roxml"
require "ddex/element"

require "ddex/ern/v341/user_defined_resource_details_by_territory"
require "ddex/v20120404/ddexc/musical_work_id"
require "ddex/v20120404/ddexc/resource_contained_resource_reference_list"
require "ddex/v20120404/ddexc/resource_musical_work_reference_list"
require "ddex/v20120404/ddexc/title"
require "ddex/v20120404/ddexc/user_defined_resource_id"
require "ddex/v20120404/ddexc/user_defined_resource_type"
require "ddex/v20120404/ddexc/user_defined_value"

module DDEX module ERN module V341

class UserDefinedResource < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "UserDefinedResource"

      xml_accessor :user_defined_resource_type, :from => "UserDefinedResourceType", :required => false

      xml_accessor :artist_related?, :from => "IsArtistRelated", :required => false

      
      xml_accessor :user_defined_resource_ids, :as => [], :from => "UserDefinedResourceId", :required => true

      
      xml_accessor :indirect_user_defined_resource_ids, :as => [], :from => "IndirectUserDefinedResourceId", :required => false

      xml_accessor :resource_reference, :from => "ResourceReference", :required => true

      xml_accessor :resource_musical_work_reference_list, :from => "ResourceMusicalWorkReferenceList", :required => false

      xml_accessor :resource_contained_resource_reference_list, :from => "ResourceContainedResourceReferenceList", :required => false

      
      xml_accessor :titles, :as => [], :from => "Title", :required => false

      
      xml_accessor :user_defined_values, :as => [], :from => "UserDefinedValue", :required => false

      
      xml_accessor :user_defined_resource_details_by_territories, :as => [], :from => "UserDefinedResourceDetailsByTerritory", :required => true



  
      xml_accessor :updated?, :from => "@IsUpdated" 
    
  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
