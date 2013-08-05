require "ddex/proprietary_id"

module DDEX
  class ImageId < Element
    xml_accessor :replaced?, :from => "@IsReplaced"
    xml_accessor :proprietary_ids, :as => [ProprietaryId]
  end
end
