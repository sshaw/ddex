require "ddex/language"

module DDEX
  class CLine < Element
    include Language

    xml_accessor :year

    xml_accessor :cline_company
    alias :company :cline_company

    xml_accessor :cline_text
    alias :text :cline_text
  end
end
