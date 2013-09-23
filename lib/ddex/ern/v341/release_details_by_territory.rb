require "roxml"
require "ddex/element"

require "ddex/ern/v341/resource_group"
require "ddex/v20120404/ddexc/administrating_record_company"
require "ddex/v20120404/ddexc/artist"
require "ddex/v20120404/ddexc/av_rating"
require "ddex/v20120404/ddexc/character"
require "ddex/v20120404/ddexc/comment"
require "ddex/v20120404/ddexc/description"
require "ddex/v20120404/ddexc/event_date"
require "ddex/v20120404/ddexc/event_date"
require "ddex/v20120404/ddexc/file"
require "ddex/v20120404/ddexc/genre"
require "ddex/v20120404/ddexc/keywords"
require "ddex/v20120404/ddexc/label_name"
require "ddex/v20120404/ddexc/name"
require "ddex/v20120404/ddexc/parental_warning_type"
require "ddex/v20120404/ddexc/related_release"
require "ddex/v20120404/ddexc/release_type"
require "ddex/v20120404/ddexc/rights_agreement_id"
require "ddex/v20120404/ddexc/synopsis"
require "ddex/v20120404/ddexc/title"

module DDEX module ERN module V341

class ReleaseDetailsByTerritory < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
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

      
      xml_accessor :parental_warning_types, :as => [], :from => "ParentalWarningType", :required => false

      
      xml_accessor :av_ratings, :as => [], :from => "AvRating", :required => false

      xml_accessor :marketing_comment, :from => "MarketingComment", :required => false

      
      xml_accessor :resource_groups, :as => [], :from => "ResourceGroup", :required => false

      
      xml_accessor :genres, :as => [], :from => "Genre", :required => false

      xml_accessor :original_release_date, :from => "OriginalReleaseDate", :required => false

      xml_accessor :original_digital_release_date, :from => "OriginalDigitalReleaseDate", :required => false

      
      xml_accessor :files, :as => [], :from => "File", :required => false

      
      xml_accessor :file_availability_descriptions, :as => [], :from => "FileAvailabilityDescription", :required => false

      
      xml_accessor :keywords, :as => [], :from => "Keywords", :required => false

      xml_accessor :synopsis, :from => "Synopsis", :required => false

      
      xml_accessor :characters, :as => [], :from => "Character", :required => false

      xml_accessor :number_of_units_per_physical_release, :from => "NumberOfUnitsPerPhysicalRelease", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
