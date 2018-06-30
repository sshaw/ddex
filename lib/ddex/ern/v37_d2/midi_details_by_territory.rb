#
# Auto-generated by jaxb2ruby v0.0.1 on 2018-03-01 07:54:49 +0000
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v37_d2/artist"
require "ddex/ern/v37_d2/c_line"
require "ddex/ern/v37_d2/comment"
require "ddex/ern/v37_d2/courtesy_line"
require "ddex/ern/v37_d2/current_territory_code"
require "ddex/ern/v37_d2/detailed_resource_contributor"
require "ddex/ern/v37_d2/event_date"
require "ddex/ern/v37_d2/fulfillment_date"
require "ddex/ern/v37_d2/genre"
require "ddex/ern/v37_d2/host_sound_carrier"
require "ddex/ern/v37_d2/indirect_resource_contributor"
require "ddex/ern/v37_d2/keywords"
require "ddex/ern/v37_d2/label_name"
require "ddex/ern/v37_d2/name"
require "ddex/ern/v37_d2/parental_warning_type"
require "ddex/ern/v37_d2/rights_agreement_id"
require "ddex/ern/v37_d2/synopsis"
require "ddex/ern/v37_d2/technical_midi_details"
require "ddex/ern/v37_d2/title"
require "ddex/ern/v37_d2/typed_rights_controller"

module DDEX module ERN module V37D2  # :nodoc: all

class MidiDetailsByTerritory < Element
  include ROXML


  xml_name "MidiDetailsByTerritory"

      xml_accessor :excluded_territory_codes, :as => [CurrentTerritoryCode], :from => "ExcludedTerritoryCode", :required => false
      xml_accessor :territory_codes, :as => [CurrentTerritoryCode], :from => "TerritoryCode", :required => false
      xml_accessor :titles, :as => [Title], :from => "Title", :required => false
      xml_accessor :display_artists, :as => [Artist], :from => "DisplayArtist", :required => false
      xml_accessor :resource_contributors, :as => [DetailedResourceContributor], :from => "ResourceContributor", :required => false
      xml_accessor :indirect_resource_contributors, :as => [IndirectResourceContributor], :from => "IndirectResourceContributor", :required => false
      xml_accessor :rights_agreement_id, :as => RightsAgreementId, :from => "RightsAgreementId", :required => false
      xml_accessor :display_artist_names, :as => [Name], :from => "DisplayArtistName", :required => false
      xml_accessor :label_names, :as => [LabelName], :from => "LabelName", :required => false
      xml_accessor :rights_controllers, :as => [TypedRightsController], :from => "RightsController", :required => false
      xml_accessor :remastered_date, :as => EventDate, :from => "RemasteredDate", :required => false
      xml_accessor :original_resource_release_date, :as => EventDate, :from => "OriginalResourceReleaseDate", :required => false
      xml_accessor :c_lines, :as => [CLine], :from => "CLine", :required => false
      xml_accessor :courtesy_line, :as => CourtesyLine, :from => "CourtesyLine", :required => false
      xml_accessor :sequence_number, :from => "SequenceNumber", :required => false
      xml_accessor :host_sound_carriers, :as => [HostSoundCarrier], :from => "HostSoundCarrier", :required => false
      xml_accessor :marketing_comment, :as => Comment, :from => "MarketingComment", :required => false
      xml_accessor :genres, :as => [Genre], :from => "Genre", :required => false
      xml_accessor :parental_warning_types, :as => [ParentalWarningType], :from => "ParentalWarningType", :required => false
      xml_accessor :fulfillment_date, :as => FulfillmentDate, :from => "FulfillmentDate", :required => false
      xml_accessor :keywords, :as => [Keywords], :from => "Keywords", :required => false
      xml_accessor :synopsis, :as => Synopsis, :from => "Synopsis", :required => false
      xml_accessor :technical_midi_details, :as => [TechnicalMidiDetails], :from => "TechnicalMidiDetails", :required => false


  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  

end

end end end
