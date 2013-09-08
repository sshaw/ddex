module DDEX
  class MusicalWorkId < Element
    xml_accessor :replaced?, :from => "@IsReplaced"
    xml_accessor :iswc, :from => "ISWC"
    xml_accessor :opus_number
    xml_accessor :composer_catalog_number, :as => []
    xml_accessor :proprietary_ids, :as => [ProprietaryId]
  end
end
