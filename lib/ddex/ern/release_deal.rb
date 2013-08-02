require "ddex/ern/deal"

module DDEX
  module ERN
    class ReleaseDeal < Element
      include Language

      xml_accessor :deal_release_references, :as => []
      xml_accessor :deals, :from => "Deal", :as => [Deal]
      xml_accessor :effective_date, :as => [Time]
    end
  end
end
