require "ddex/user_defined_value"

module DDEX
  class ResourceContributorRole < Element
    include UserDefinedValue

    xml_accessor :value, :from => "."
  end
end
