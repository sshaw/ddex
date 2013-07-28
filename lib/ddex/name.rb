require "ddex/language"

module DDEX
  class Name < Element
    include Language
    xml_accessor :value, :from => "."
  end
end
