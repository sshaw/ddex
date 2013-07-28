require "ddex/user_defined_value"

module DDEX
  class CommercialModelType < Element
    include UserDefinedValue

    xml_accessor :value, :from => "."

    def to_s
      value.to_s
    end
  end
end
