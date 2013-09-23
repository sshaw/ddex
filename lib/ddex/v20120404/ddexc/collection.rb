require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/collection_collection_reference_list"
require "ddex/v20120404/ddexc/collection_details_by_territory"
require "ddex/v20120404/ddexc/collection_id"
require "ddex/v20120404/ddexc/collection_resource_reference_list"
require "ddex/v20120404/ddexc/collection_type"
require "ddex/v20120404/ddexc/event_date"
require "ddex/v20120404/ddexc/event_date"
require "ddex/v20120404/ddexc/resource_contributor"
require "ddex/v20120404/ddexc/title"

module DDEX module V20120404 module DDEXC

class Collection < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "Collection"

      
      xml_accessor :collection_ids, :as => [], :from => "CollectionId", :required => true

      
      xml_accessor :collection_types, :as => [], :from => "CollectionType", :required => false

      xml_accessor :collection_reference, :from => "CollectionReference", :required => true

      
      xml_accessor :titles, :as => [], :from => "Title", :required => false

      
      xml_accessor :contributors, :as => [], :from => "Contributor", :required => false

      xml_accessor :collection_collection_reference_list, :from => "CollectionCollectionReferenceList", :required => false

      xml_accessor :complete?, :from => "IsComplete", :required => false

      xml_accessor :duration_of_musical_content, :from => "DurationOfMusicalContent", :required => false

      xml_accessor :creation_date, :from => "CreationDate", :required => false

      xml_accessor :original_release_date, :from => "OriginalReleaseDate", :required => false

      xml_accessor :original_language, :from => "OriginalLanguage", :required => false

      
      xml_accessor :collection_details_by_territories, :as => [], :from => "CollectionDetailsByTerritory", :required => false

      xml_accessor :collection_resource_reference_list, :from => "CollectionResourceReferenceList", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
