require "ddex/language"
require "ddex/sub_title"
require "ddex/title_text"

module DDEX
  class TypedSubTitle < SubTitle
    xml_accessor :sub_title_type, :from => :attr
  end
  
  class Title < Element
    include Language

    xml_accessor :title_type, :from => :attr
    xml_accessor :title_text, :as => TitleText
    xml_accessor :sub_title, :as => [TypedSubTitle]
  end
end
