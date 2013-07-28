require "ddex/language"

module DDEX
  class CourtesyLine < Element
    include Language
    xml_accessor :value, :from => "."
  end
end
