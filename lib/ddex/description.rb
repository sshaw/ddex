require "ddex/language"

module DDEX
  class Description < Element
    include Language
    xml_accessor :value, :from => "."
  end
end
