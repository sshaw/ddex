#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v43/additional_title"
require "ddex/ern/v43/c_line_with_default"
require "ddex/ern/v43/contributor"
require "ddex/ern/v43/courtesy_line_with_default"
require "ddex/ern/v43/display_artist"
require "ddex/ern/v43/display_artist_name_with_default"
require "ddex/ern/v43/display_title"
require "ddex/ern/v43/display_title_text"
require "ddex/ern/v43/event_date_without_flags"
require "ddex/ern/v43/fulfillment_date_with_territory"
require "ddex/ern/v43/musical_work_id"
require "ddex/ern/v43/p_line_with_default"
require "ddex/ern/v43/parental_warning_type_with_territory"
require "ddex/ern/v43/related_release"
require "ddex/ern/v43/related_resource"
require "ddex/ern/v43/resource_contained_resource_reference_list"
require "ddex/ern/v43/resource_proprietary_id"
require "ddex/ern/v43/resource_rights_controller"
require "ddex/ern/v43/software_type"
require "ddex/ern/v43/technical_software_details"
require "ddex/ern/v43/version_type"
require "ddex/ern/v43/work_rights_controller"

module DDEX module ERN module V43  # :nodoc: all

class DDEX::ERN::V43::Software < Element
  include ROXML


  xml_name "Software"

      xml_accessor :resource_reference, :from => "ResourceReference", :required => true
      xml_accessor :type, :as => DDEX::ERN::V43::SoftwareType, :from => "Type", :required => true
      xml_accessor :resource_ids, :as => [DDEX::ERN::V43::ResourceProprietaryId], :from => "ResourceId", :required => true
      xml_accessor :work_ids, :as => [DDEX::ERN::V43::MusicalWorkId], :from => "WorkId", :required => false
      xml_accessor :display_title_texts, :as => [DDEX::ERN::V43::DisplayTitleText], :from => "DisplayTitleText", :required => false
      xml_accessor :display_titles, :as => [DDEX::ERN::V43::DisplayTitle], :from => "DisplayTitle", :required => false
      xml_accessor :additional_titles, :as => [DDEX::ERN::V43::AdditionalTitle], :from => "AdditionalTitle", :required => false
      xml_accessor :version_types, :as => [DDEX::ERN::V43::VersionType], :from => "VersionType", :required => false
      xml_accessor :display_artist_names, :as => [DDEX::ERN::V43::DisplayArtistNameWithDefault], :from => "DisplayArtistName", :required => false
      xml_accessor :display_artists, :as => [DDEX::ERN::V43::DisplayArtist], :from => "DisplayArtist", :required => false
      xml_accessor :contributors, :as => [DDEX::ERN::V43::Contributor], :from => "Contributor", :required => false
      xml_accessor :resource_rights_controllers, :as => [DDEX::ERN::V43::ResourceRightsController], :from => "ResourceRightsController", :required => false
      xml_accessor :work_rights_controllers, :as => [DDEX::ERN::V43::WorkRightsController], :from => "WorkRightsController", :required => false
      xml_accessor :p_lines, :as => [DDEX::ERN::V43::PLineWithDefault], :from => "PLine", :required => false
      xml_accessor :c_lines, :as => [DDEX::ERN::V43::CLineWithDefault], :from => "CLine", :required => false
      xml_accessor :courtesy_lines, :as => [DDEX::ERN::V43::CourtesyLineWithDefault], :from => "CourtesyLine", :required => false
      xml_accessor :creation_date, :as => DDEX::ERN::V43::EventDateWithoutFlags, :from => "CreationDate", :required => false
      xml_accessor :first_publication_dates, :as => [DDEX::ERN::V43::FulfillmentDateWithTerritory], :from => "FirstPublicationDate", :required => false
      xml_accessor :parental_warning_types, :as => [DDEX::ERN::V43::ParentalWarningTypeWithTerritory], :from => "ParentalWarningType", :required => false
      xml_accessor :related_releases, :as => [DDEX::ERN::V43::RelatedRelease], :from => "RelatedRelease", :required => false
      xml_accessor :related_resources, :as => [DDEX::ERN::V43::RelatedResource], :from => "RelatedResource", :required => false
      xml_accessor :contains_hidden_content?, :from => "ContainsHiddenContent", :required => false
      xml_accessor :resource_contained_resource_reference_list, :as => DDEX::ERN::V43::ResourceContainedResourceReferenceList, :from => "ResourceContainedResourceReferenceList", :required => false
      xml_accessor :technical_details, :as => [DDEX::ERN::V43::TechnicalSoftwareDetails], :from => "TechnicalDetails", :required => false


  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
      xml_accessor :supplemental?, :from => "@IsSupplemental", :required => false
    
  

end

end end end
