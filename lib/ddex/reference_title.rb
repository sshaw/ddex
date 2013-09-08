require "ddex/language"
require "ddex/sub_title"
require "ddex/title_text"

module DDEX
  class ReferenceTitle < Element
    include Language
    xml_accessor :title_text, :as => TitleText
    xml_accessor :sub_title, :as => SubTitle
  end
end
