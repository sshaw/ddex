require "ddex/catalog_number"
require "ddex/proprietary_id"

module DDEX
  class SoundRecordingId < SimpleElement
    xml_accessor :replaced?, :from => "@IsReplaced"
    xml_accessor :isrc, :from => "ISRC"
    xml_accessor :catalog_number, :as => CatalogNumber
    xml_accessor :proprietary_ids, :as => [ProprietaryId]
  end
end
