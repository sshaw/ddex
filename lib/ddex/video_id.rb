require "ddex/catalog_number"
require "ddex/proprietary_id"

module DDEX
  class VideoId < Element
    xml_accessor :replaced?, :from => "@IsReplaced"
    xml_accessor :isrc, :from => "ISRC"

    ### uniq
    xml_accessor :isan, :from => "ISAN"
    xml_accessor :visan, :from => "VISAN"
    ###

    xml_accessor :catalog_number, :as => CatalogNumber
    xml_accessor :proprietary_ids, :as => [ProprietaryId]
  end
end
