require "ddex/artist"
require "ddex/event_date"
require "ddex/indirect_resource_contributor"
require "ddex/label_name"
require "ddex/language"
require "ddex/original_resource_release_date"
require "ddex/pline"
require "ddex/resource_contributor"
require "ddex/rights_agreement_id"
require "ddex/rights_controller"
require "ddex/title"

module DDEX  
  class SoundRecordingDetailsByTerritory < Element
    include Language

    xml_accessor :territory_codes, :from => "TerritoryCode", :as => []
    xml_accessor :excluded_territory_codes, :from => "ExcludedTerritoryCode", :as => []
    xml_accessor :titles, :as => [Title]
    xml_accessor :display_artists, :as => [Artist]
    xml_accessor :resource_contributors, :as => [ResourceContributor]
    xml_accessor :indirect_resource_contributors, :as => [IndirectResourceContributor]
    xml_accessor :rights_agreement_id, :as => RightsAgreementId
    xml_accessor :label_names, :as => [LabelName]
    xml_accessor :rights_controller, :as => [RightsController]
    xml_accessor :remastered_date, :as => EventDate
    xml_accessor :original_resource_release_date, :as => OriginalResourceReleaseDate
    xml_accessor :plines, :from => "PLine", :as => [PLine]    
  end
end
