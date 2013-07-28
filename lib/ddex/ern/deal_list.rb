require "ddex/ern/release_deal"

module DDEX
  module ERN
    class DealList < Element
      include Enumerable
      include Language
      
      xml_accessor :release_deals, :from => "ReleaseDeal", :as => [ReleaseDeal]

      def each
        release_deals.each { |e| yield e }
      end
    end
  end
end
