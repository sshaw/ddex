require "roxml"
require "ddex/element"

require "ddex/ern/v36/label_name"
require "ddex/ern/v36/name"
require "ddex/ern/v36/rights_agreement_id"

module DDEX module ERN module V36

class ReleaseSummaryDetailsByTerritory < Element
  include ROXML

      
    
  
  xml_name "ReleaseSummaryDetailsByTerritory"

      
      xml_accessor :excluded_territory_codes, :as => [], :from => "ExcludedTerritoryCode", :required => false

      
      xml_accessor :territory_codes, :as => [], :from => "TerritoryCode", :required => false

      
      xml_accessor :display_artist_names, :as => [DDEX::ERN::V36::Name], :from => "DisplayArtistName", :required => false

      
      xml_accessor :label_names, :as => [DDEX::ERN::V36::LabelName], :from => "LabelName", :required => false

      xml_accessor :rights_agreement_id, :as => DDEX::ERN::V36::RightsAgreementId, :from => "RightsAgreementId", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
