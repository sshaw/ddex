require "ddex/language"
require "ddex/simple_element"

module DDEX
  class Keywords < SimpleElement
    include Language

    # Without :from, ROXML takes singular form for element name
    xml_name "Keywords"
  end
end
