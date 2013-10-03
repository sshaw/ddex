require "roxml"
require "ddex/element"

require "ddex/ern/v36/administrating_record_company"
require "ddex/ern/v36/artist"
require "ddex/ern/v36/artist"
require "ddex/ern/v36/av_rating"
require "ddex/ern/v36/character"
require "ddex/ern/v36/comment"
require "ddex/ern/v36/description"
require "ddex/ern/v36/event_date"
require "ddex/ern/v36/event_date"
require "ddex/ern/v36/event_date"
require "ddex/ern/v36/file"
require "ddex/ern/v36/genre"
require "ddex/ern/v36/keywords"
require "ddex/ern/v36/label_name"
require "ddex/ern/v36/name"
require "ddex/ern/v36/parental_warning_type"
require "ddex/ern/v36/related_release"
require "ddex/ern/v36/release_type"
require "ddex/ern/v36/resource_group"
require "ddex/ern/v36/rights_agreement_id"
require "ddex/ern/v36/synopsis"
require "ddex/ern/v36/title"

module DDEX module ERN module V36

class ReleaseDetailsByTerritory < Element
  include ROXML

      
    
  
  xml_name "ReleaseDetailsByTerritory"

      
      xml_accessor :excluded_territory_codes, :as => [], :from => "ExcludedTerritoryCode", :required => false

      
      xml_accessor :territory_codes, :as => [], :from => "TerritoryCode", :required => false

      
      xml_accessor :display_artist_names, :as => [DDEX::ERN::V36::Name], :from => "DisplayArtistName", :required => false

      
      xml_accessor :label_names, :as => [DDEX::ERN::V36::LabelName], :from => "LabelName", :required => false

      xml_accessor :rights_agreement_id, :as => DDEX::ERN::V36::RightsAgreementId, :from => "RightsAgreementId", :required => false

      
      xml_accessor :titles, :as => [DDEX::ERN::V36::Title], :from => "Title", :required => false

      
      xml_accessor :display_artists, :as => [DDEX::ERN::V36::Artist], :from => "DisplayArtist", :required => false

      xml_accessor :multi_artist_compilation?, :from => "IsMultiArtistCompilation", :required => false

      
      xml_accessor :administrating_record_companies, :as => [DDEX::ERN::V36::AdministratingRecordCompany], :from => "AdministratingRecordCompany", :required => false

      
      xml_accessor :release_types, :as => [DDEX::ERN::V36::ReleaseType], :from => "ReleaseType", :required => false

      
      xml_accessor :related_releases, :as => [DDEX::ERN::V36::RelatedRelease], :from => "RelatedRelease", :required => false

      
      xml_accessor :parental_warning_types, :as => [DDEX::ERN::V36::ParentalWarningType], :from => "ParentalWarningType", :required => false

      
      xml_accessor :av_ratings, :as => [DDEX::ERN::V36::AvRating], :from => "AvRating", :required => false

      xml_accessor :marketing_comment, :as => DDEX::ERN::V36::Comment, :from => "MarketingComment", :required => false

      
      xml_accessor :resource_groups, :as => [DDEX::ERN::V36::ResourceGroup], :from => "ResourceGroup", :required => false

      
      xml_accessor :genres, :as => [DDEX::ERN::V36::Genre], :from => "Genre", :required => false

      xml_accessor :release_date, :as => DDEX::ERN::V36::EventDate, :from => "ReleaseDate", :required => false

      xml_accessor :original_release_date, :as => DDEX::ERN::V36::EventDate, :from => "OriginalReleaseDate", :required => false

      xml_accessor :original_digital_release_date, :as => DDEX::ERN::V36::EventDate, :from => "OriginalDigitalReleaseDate", :required => false

      
      xml_accessor :files, :as => [DDEX::ERN::V36::File], :from => "File", :required => false

      
      xml_accessor :file_availability_descriptions, :as => [DDEX::ERN::V36::Description], :from => "FileAvailabilityDescription", :required => false

      
      xml_accessor :keywords, :as => [DDEX::ERN::V36::Keywords], :from => "Keywords", :required => false

      xml_accessor :synopsis, :as => DDEX::ERN::V36::Synopsis, :from => "Synopsis", :required => false

      
      xml_accessor :characters, :as => [DDEX::ERN::V36::Character], :from => "Character", :required => false

      xml_accessor :number_of_units_per_physical_release, :as => Integer, :from => "NumberOfUnitsPerPhysicalRelease", :required => false

      
      xml_accessor :display_conductors, :as => [DDEX::ERN::V36::Artist], :from => "DisplayConductor", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
