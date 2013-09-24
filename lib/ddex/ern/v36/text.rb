require "roxml"
require "ddex/element"

require "ddex/ern/v36/event_date"
require "ddex/ern/v36/musical_work_id"
require "ddex/ern/v36/resource_contained_resource_reference_list"
require "ddex/ern/v36/resource_musical_work_reference_list"
require "ddex/ern/v36/text_details_by_territory"
require "ddex/ern/v36/text_id"
require "ddex/ern/v36/text_type"
require "ddex/ern/v36/title"

module DDEX module ERN module V36

class Text < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "Text"

      xml_accessor :text_type, :as => DDEX::ERN::V36::TextType, :from => "TextType", :required => false

      xml_accessor :artist_related?, :from => "IsArtistRelated", :required => false

      
      xml_accessor :text_ids, :as => [DDEX::ERN::V36::TextId], :from => "TextId", :required => false

      
      xml_accessor :indirect_text_ids, :as => [DDEX::ERN::V36::MusicalWorkId], :from => "IndirectTextId", :required => false

      xml_accessor :resource_reference, :from => "ResourceReference", :required => true

      xml_accessor :resource_musical_work_reference_list, :as => DDEX::ERN::V36::ResourceMusicalWorkReferenceList, :from => "ResourceMusicalWorkReferenceList", :required => false

      xml_accessor :resource_contained_resource_reference_list, :as => DDEX::ERN::V36::ResourceContainedResourceReferenceList, :from => "ResourceContainedResourceReferenceList", :required => false

      
      xml_accessor :titles, :as => [DDEX::ERN::V36::Title], :from => "Title", :required => false

      xml_accessor :creation_date, :as => DDEX::ERN::V36::EventDate, :from => "CreationDate", :required => false

      
      xml_accessor :text_details_by_territories, :as => [DDEX::ERN::V36::TextDetailsByTerritory], :from => "TextDetailsByTerritory", :required => true



  
      xml_accessor :updated?, :from => "@IsUpdated", :required => false
    
  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
