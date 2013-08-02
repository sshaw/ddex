require "ddex/language"

module DDEX
  class CLine < Element
    include Language

    xml_accessor :year, :as => Integer

    xml_accessor :cline_company, :from => "CLineCompany"
    alias :company :cline_company

    xml_accessor :cline_text, :from => "CLineText"
    alias :text :cline_text
  end
end
