require "roxml"
require "ddex/element"

require "ddex/ern/v341/sheet_music_details_by_territory"
require "ddex/v20120404/ddexc/event_date"
require "ddex/v20120404/ddexc/musical_work_id"
require "ddex/v20120404/ddexc/reference_title"
require "ddex/v20120404/ddexc/resource_contained_resource_reference_list"
require "ddex/v20120404/ddexc/resource_musical_work_reference_list"
require "ddex/v20120404/ddexc/rights_agreement_id"
require "ddex/v20120404/ddexc/sheet_music_id"
require "ddex/v20120404/ddexc/sheet_music_type"

module DDEX module ERN module V341

class SheetMusic < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "SheetMusic"

      xml_accessor :sheet_music_type, :from => "SheetMusicType", :required => false

      xml_accessor :artist_related?, :from => "IsArtistRelated", :required => false

      
      xml_accessor :sheet_music_ids, :as => [], :from => "SheetMusicId", :required => true

      
      xml_accessor :indirect_sheet_music_ids, :as => [], :from => "IndirectSheetMusicId", :required => false

      xml_accessor :resource_reference, :from => "ResourceReference", :required => true

      xml_accessor :language_of_lyrics, :from => "LanguageOfLyrics", :required => false

      xml_accessor :rights_agreement_id, :from => "RightsAgreementId", :required => false

      xml_accessor :resource_musical_work_reference_list, :from => "ResourceMusicalWorkReferenceList", :required => false

      xml_accessor :resource_contained_resource_reference_list, :from => "ResourceContainedResourceReferenceList", :required => false

      xml_accessor :reference_title, :from => "ReferenceTitle", :required => true

      xml_accessor :creation_date, :from => "CreationDate", :required => false

      
      xml_accessor :sheet_music_details_by_territories, :as => [], :from => "SheetMusicDetailsByTerritory", :required => true



  
      xml_accessor :updated?, :from => "@IsUpdated" 
    
  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
