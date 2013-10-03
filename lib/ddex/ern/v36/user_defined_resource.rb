require "roxml"
require "ddex/element"

require "ddex/ern/v36/musical_work_id"
require "ddex/ern/v36/resource_contained_resource_reference_list"
require "ddex/ern/v36/resource_musical_work_reference_list"
require "ddex/ern/v36/title"
require "ddex/ern/v36/user_defined_resource_details_by_territory"
require "ddex/ern/v36/user_defined_resource_id"
require "ddex/ern/v36/user_defined_resource_type"
require "ddex/ern/v36/user_defined_value"

module DDEX module ERN module V36

class UserDefinedResource < Element
  include ROXML

      
    
  
  xml_name "UserDefinedResource"

      xml_accessor :user_defined_resource_type, :as => DDEX::ERN::V36::UserDefinedResourceType, :from => "UserDefinedResourceType", :required => false

      xml_accessor :artist_related?, :from => "IsArtistRelated", :required => false

      
      xml_accessor :user_defined_resource_ids, :as => [DDEX::ERN::V36::UserDefinedResourceId], :from => "UserDefinedResourceId", :required => true

      
      xml_accessor :indirect_user_defined_resource_ids, :as => [DDEX::ERN::V36::MusicalWorkId], :from => "IndirectUserDefinedResourceId", :required => false

      xml_accessor :resource_reference, :from => "ResourceReference", :required => true

      xml_accessor :resource_musical_work_reference_list, :as => DDEX::ERN::V36::ResourceMusicalWorkReferenceList, :from => "ResourceMusicalWorkReferenceList", :required => false

      xml_accessor :resource_contained_resource_reference_list, :as => DDEX::ERN::V36::ResourceContainedResourceReferenceList, :from => "ResourceContainedResourceReferenceList", :required => false

      
      xml_accessor :titles, :as => [DDEX::ERN::V36::Title], :from => "Title", :required => false

      
      xml_accessor :user_defined_values, :as => [DDEX::ERN::V36::UserDefinedValue], :from => "UserDefinedValue", :required => false

      
      xml_accessor :user_defined_resource_details_by_territories, :as => [DDEX::ERN::V36::UserDefinedResourceDetailsByTerritory], :from => "UserDefinedResourceDetailsByTerritory", :required => true



  
      xml_accessor :updated?, :from => "@IsUpdated", :required => false
    
  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
