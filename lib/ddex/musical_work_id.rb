module DDEX
  class MusicalWorkId < Element
    # replaced?
    xml_accessor :iswc, :from => "ISWC"
    xml_accessor :opus_number
    xml_accessor :composer_catalog_number, :as => []
    # proprietary_ids
  end
end
