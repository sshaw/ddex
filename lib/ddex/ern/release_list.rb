require "ddex/ern/release"

module DDEX
  module ERN
    class ReleaseList < Element
      include Enumerable
      include Language

      xml_accessor :releases, :from => "Release", :as => [Release]
    end
  end
end
