#
# Auto-generated by jaxb2ruby v0.0.1 on 2018-03-01 07:52:38 +0000
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v371/administrating_record_company"
require "ddex/ern/v371/artist"
require "ddex/ern/v371/av_rating"
require "ddex/ern/v371/c_line"
require "ddex/ern/v371/character"
require "ddex/ern/v371/comment"
require "ddex/ern/v371/current_territory_code"
require "ddex/ern/v371/description"
require "ddex/ern/v371/event_date"
require "ddex/ern/v371/file"
require "ddex/ern/v371/genre"
require "ddex/ern/v371/keywords"
require "ddex/ern/v371/label_name"
require "ddex/ern/v371/name"
require "ddex/ern/v371/p_line"
require "ddex/ern/v371/parental_warning_type"
require "ddex/ern/v371/related_release"
require "ddex/ern/v371/release_type"
require "ddex/ern/v371/resource_group"
require "ddex/ern/v371/rights_agreement_id"
require "ddex/ern/v371/synopsis"
require "ddex/ern/v371/title"

module DDEX module ERN module V371  # :nodoc: all

class ReleaseDetailsByTerritory < Element
  include ROXML


  xml_name "ReleaseDetailsByTerritory"

      xml_accessor :excluded_territory_codes, :as => [CurrentTerritoryCode], :from => "ExcludedTerritoryCode", :required => false
      xml_accessor :territory_codes, :as => [CurrentTerritoryCode], :from => "TerritoryCode", :required => false
      xml_accessor :display_artist_names, :as => [Name], :from => "DisplayArtistName", :required => false
      xml_accessor :label_names, :as => [LabelName], :from => "LabelName", :required => false
      xml_accessor :rights_agreement_id, :as => RightsAgreementId, :from => "RightsAgreementId", :required => false
      xml_accessor :titles, :as => [Title], :from => "Title", :required => false
      xml_accessor :display_artists, :as => [Artist], :from => "DisplayArtist", :required => false
      xml_accessor :multi_artist_compilation?, :from => "IsMultiArtistCompilation", :required => false
      xml_accessor :administrating_record_companies, :as => [AdministratingRecordCompany], :from => "AdministratingRecordCompany", :required => false
      xml_accessor :release_types, :as => [ReleaseType], :from => "ReleaseType", :required => false
      xml_accessor :related_releases, :as => [RelatedRelease], :from => "RelatedRelease", :required => false
      xml_accessor :parental_warning_types, :as => [ParentalWarningType], :from => "ParentalWarningType", :required => false
      xml_accessor :av_ratings, :as => [AvRating], :from => "AvRating", :required => false
      xml_accessor :marketing_comment, :as => Comment, :from => "MarketingComment", :required => false
      xml_accessor :resource_groups, :as => [ResourceGroup], :from => "ResourceGroup", :required => false
      xml_accessor :genres, :as => [Genre], :from => "Genre", :required => false
      xml_accessor :p_lines, :as => [PLine], :from => "PLine", :required => false
      xml_accessor :c_lines, :as => [CLine], :from => "CLine", :required => false
      xml_accessor :release_date, :as => EventDate, :from => "ReleaseDate", :required => false
      xml_accessor :original_release_date, :as => EventDate, :from => "OriginalReleaseDate", :required => false
      xml_accessor :original_digital_release_date, :as => EventDate, :from => "OriginalDigitalReleaseDate", :required => false
      xml_accessor :files, :as => [File], :from => "File", :required => false
      xml_accessor :file_availability_descriptions, :as => [Description], :from => "FileAvailabilityDescription", :required => false
      xml_accessor :keywords, :as => [Keywords], :from => "Keywords", :required => false
      xml_accessor :synopsis, :as => Synopsis, :from => "Synopsis", :required => false
      xml_accessor :characters, :as => [Character], :from => "Character", :required => false
      xml_accessor :number_of_units_per_physical_release, :as => Integer, :from => "NumberOfUnitsPerPhysicalRelease", :required => false
      xml_accessor :display_conductors, :as => [Artist], :from => "DisplayConductor", :required => false


  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  

end

end end end
