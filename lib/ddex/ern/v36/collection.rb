require "roxml"
require "ddex/element"

require "ddex/ern/v36/c_line"
require "ddex/ern/v36/character"
require "ddex/ern/v36/collection_collection_reference_list"
require "ddex/ern/v36/collection_details_by_territory"
require "ddex/ern/v36/collection_id"
require "ddex/ern/v36/collection_resource_reference_list"
require "ddex/ern/v36/collection_type"
require "ddex/ern/v36/collection_work_reference_list"
require "ddex/ern/v36/event_date"
require "ddex/ern/v36/event_date"
require "ddex/ern/v36/p_line"
require "ddex/ern/v36/resource_contributor"
require "ddex/ern/v36/title"

module DDEX module ERN module V36

class Collection < Element
  include ROXML

      
    
  
  xml_name "Collection"

      
      xml_accessor :collection_ids, :as => [DDEX::ERN::V36::CollectionId], :from => "CollectionId", :required => true

      
      xml_accessor :collection_types, :as => [DDEX::ERN::V36::CollectionType], :from => "CollectionType", :required => false

      xml_accessor :collection_reference, :from => "CollectionReference", :required => true

      
      xml_accessor :titles, :as => [DDEX::ERN::V36::Title], :from => "Title", :required => false

      
      xml_accessor :contributors, :as => [DDEX::ERN::V36::ResourceContributor], :from => "Contributor", :required => false

      
      xml_accessor :characters, :as => [DDEX::ERN::V36::Character], :from => "Character", :required => false

      xml_accessor :collection_collection_reference_list, :as => DDEX::ERN::V36::CollectionCollectionReferenceList, :from => "CollectionCollectionReferenceList", :required => false

      xml_accessor :complete?, :from => "IsComplete", :required => false

      xml_accessor :duration, :from => "Duration", :required => false

      xml_accessor :duration_of_musical_content, :from => "DurationOfMusicalContent", :required => false

      xml_accessor :creation_date, :as => DDEX::ERN::V36::EventDate, :from => "CreationDate", :required => false

      xml_accessor :original_release_date, :as => DDEX::ERN::V36::EventDate, :from => "OriginalReleaseDate", :required => false

      xml_accessor :original_language, :from => "OriginalLanguage", :required => false

      
      xml_accessor :collection_details_by_territories, :as => [DDEX::ERN::V36::CollectionDetailsByTerritory], :from => "CollectionDetailsByTerritory", :required => false

      xml_accessor :collection_resource_reference_list, :as => DDEX::ERN::V36::CollectionResourceReferenceList, :from => "CollectionResourceReferenceList", :required => false

      xml_accessor :collection_work_reference_list, :as => DDEX::ERN::V36::CollectionWorkReferenceList, :from => "CollectionWorkReferenceList", :required => false

      xml_accessor :representative_image_reference, :from => "RepresentativeImageReference", :required => false

      
      xml_accessor :p_lines, :as => [DDEX::ERN::V36::PLine], :from => "PLine", :required => false

      
      xml_accessor :c_lines, :as => [DDEX::ERN::V36::CLine], :from => "CLine", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
