require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/administrating_record_company"
require "ddex/v20120404/ddexc/artist"
require "ddex/v20120404/ddexc/label_name"
require "ddex/v20120404/ddexc/name"
require "ddex/v20120404/ddexc/related_release"
require "ddex/v20120404/ddexc/release_type"
require "ddex/v20120404/ddexc/rights_agreement_id"
require "ddex/v20120404/ddexc/title"

module DDEX module V20120404 module DDEXC

class ReleaseDetailsByTerritory < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "ReleaseDetailsByTerritory"

      
      xml_accessor :excluded_territory_codes, :as => [], :from => "ExcludedTerritoryCode", :required => false

      
      xml_accessor :territory_codes, :as => [], :from => "TerritoryCode", :required => false

      
      xml_accessor :display_artist_names, :as => [], :from => "DisplayArtistName", :required => false

      
      xml_accessor :label_names, :as => [], :from => "LabelName", :required => false

      xml_accessor :rights_agreement_id, :from => "RightsAgreementId", :required => false

      
      xml_accessor :titles, :as => [], :from => "Title", :required => false

      
      xml_accessor :display_artists, :as => [], :from => "DisplayArtist", :required => true

      xml_accessor :multi_artist_compilation?, :from => "IsMultiArtistCompilation", :required => false

      
      xml_accessor :administrating_record_companies, :as => [], :from => "AdministratingRecordCompany", :required => false

      
      xml_accessor :release_types, :as => [], :from => "ReleaseType", :required => false

      
      xml_accessor :related_releases, :as => [], :from => "RelatedRelease", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
