require "ddex/language"

module DDEX
  class Genrte < Element
    include Language
    xml_accessor :genre_text
    xml_accessor :sub_genre
  end
end
