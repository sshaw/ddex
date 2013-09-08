require "ddex/catalog_number"
require "ddex/icpn"
require "ddex/proprietary_id"

module DDEX
  class ReleaseId < Element
    xml_accessor :replaced?, :from => "@IsReplaced"
    xml_accessor :grid, :from => "GRid"
    xml_accessor :isrc, :from => "ISRC"
    xml_accessor :icpn, :from => "ICPN", :as => ICPN
    # catalog_number
    xml_accessor :catalog_number, :as => CatalogNumber
    # proprietary_ids
    xml_accessor :proprietary_ids, :as => [ProprietaryId]
  end
end

  
