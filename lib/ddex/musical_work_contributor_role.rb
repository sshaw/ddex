require "ddex/user_defined_value"

module DDEX
  class MusicalWorkContributorRole < Element
    include UserDefinedValue

    xml_accessor :value, :from => "."
  end
end
