require "ddex/element"

module DDEX
  class ContentElement < Element
    xml_accessor :value, :from => "."
    # def to_s
    #  value.to_s
    # end
  end
end
