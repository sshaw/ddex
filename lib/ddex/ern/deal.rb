require "ddex/ern/deal_terms"
require "ddex/ern/deal_reference"
require "ddex/ern/resource_usage"
#require "ddex/ern/distribution_channel_page"

module DDEX
  module ERN
    class Deal < Element
      include Language

      xml_accessor :deal_references, :in => "DealReference", :as => [DealReference]
      xml_accessor :terms, :from => "DealTerms", :as => DealTerms
      xml_accessor :resource_usage, :as => ResourceUsage
      #xml_accessor :xxxx, :from => "DealTechnicalResourceDetailsReferenceList"
      #xml_accessor :distribution_channel_page, :as => [DistributionChannelPage]
    end
  end
end
