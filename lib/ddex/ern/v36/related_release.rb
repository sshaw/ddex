require "roxml"
require "ddex/element"

require "ddex/ern/v36/event_date"
require "ddex/ern/v36/event_date"
require "ddex/ern/v36/reference_title"
require "ddex/ern/v36/release_id"
require "ddex/ern/v36/release_relationship_type"
require "ddex/ern/v36/release_summary_details_by_territory"
require "ddex/ern/v36/rights_agreement_id"

module DDEX module ERN module V36

class RelatedRelease < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "RelatedRelease"

      
      xml_accessor :release_ids, :as => [DDEX::ERN::V36::ReleaseId], :from => "ReleaseId", :required => true

      xml_accessor :reference_title, :as => DDEX::ERN::V36::ReferenceTitle, :from => "ReferenceTitle", :required => false

      
      xml_accessor :release_summary_details_by_territories, :as => [DDEX::ERN::V36::ReleaseSummaryDetailsByTerritory], :from => "ReleaseSummaryDetailsByTerritory", :required => false

      xml_accessor :rights_agreement_id, :as => DDEX::ERN::V36::RightsAgreementId, :from => "RightsAgreementId", :required => false

      xml_accessor :release_relationship_type, :as => DDEX::ERN::V36::ReleaseRelationshipType, :from => "ReleaseRelationshipType", :required => true

      xml_accessor :release_date, :as => DDEX::ERN::V36::EventDate, :from => "ReleaseDate", :required => false

      xml_accessor :original_release_date, :as => DDEX::ERN::V36::EventDate, :from => "OriginalReleaseDate", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
