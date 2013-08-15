require "ddex/language"
require "ddex/description"

module DDEX
  class GenreText < Description
  end

  class SubGenre < Description
  end

  class Genre < Element
    include Language
    xml_accessor :genre_text, :as => GenreText
    xml_accessor :sub_genre, :as => SubGenre
  end
end
