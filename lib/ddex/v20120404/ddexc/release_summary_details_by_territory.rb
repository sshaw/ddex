require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/label_name"
require "ddex/v20120404/ddexc/name"
require "ddex/v20120404/ddexc/rights_agreement_id"

module DDEX module V20120404 module DDEXC

class ReleaseSummaryDetailsByTerritory < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "ReleaseSummaryDetailsByTerritory"

      
      xml_accessor :excluded_territory_codes, :as => [], :from => "ExcludedTerritoryCode", :required => false

      
      xml_accessor :territory_codes, :as => [], :from => "TerritoryCode", :required => false

      
      xml_accessor :display_artist_names, :as => [], :from => "DisplayArtistName", :required => false

      
      xml_accessor :label_names, :as => [], :from => "LabelName", :required => false

      xml_accessor :rights_agreement_id, :from => "RightsAgreementId", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
