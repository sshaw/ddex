require "ddex/cline"
require "ddex/courtesy_line"
require "ddex/description"
require "ddex/event_date"
require "ddex/indirect_resource_contributor"
require "ddex/resource_contributor"

module DDEX
  class ImageDetailsByTerritory < Element
    include Language

    xml_accessor :territory_codes, :as => []
    xml_accessor :excluded_territory_codes, :as => []
    xml_accessor :resource_contributors, :as => [ResourceContributor]
    xml_accessor :indirect_resource_contributors, :as => [IndirectResourceContributor]
    xml_accessor :clines, :as => [CLine]
    xml_accessor :description, :as => Description
    xml_accessor :courtesy_line, :as => CourtesyLine
    xml_accessor :original_resource_release_date, :as => EventDate
  end
end
