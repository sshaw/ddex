require "ddex/language"

module DDEX
  class PLine < Element
    include Language

    xml_accessor :pline_type, :from => "@PLineType"
    xml_accessor :year, :as => Integer
    xml_accessor :pline_company, :from => "PLineCompany"
    # alias_method :company, :pline_company
    xml_accessor :pline_text, :from => "PLineText"
  end
end
