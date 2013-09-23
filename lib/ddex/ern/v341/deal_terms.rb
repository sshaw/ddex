require "roxml"
require "ddex/element"

require "ddex/ern/v341/physical_returns"
require "ddex/ern/v341/related_release_offer_set"
require "ddex/ern/v341/rights_claim_policy"
require "ddex/ern/v341/web_policy"
require "ddex/v20120404/ddexc/commercial_model_type"
require "ddex/v20120404/ddexc/consumer_rental_period"
require "ddex/v20120404/ddexc/dsp"
require "ddex/v20120404/ddexc/dsp"
require "ddex/v20120404/ddexc/event_date"
require "ddex/v20120404/ddexc/event_date"
require "ddex/v20120404/ddexc/period"
require "ddex/v20120404/ddexc/price_information"
require "ddex/v20120404/ddexc/promotional_code"
require "ddex/v20120404/ddexc/usage"

module DDEX module ERN module V341

class DealTerms < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "DealTerms"

      
      xml_accessor :commercial_model_types, :as => [], :from => "CommercialModelType", :required => false

      xml_accessor :take_down, :from => "TakeDown", :required => false

      xml_accessor :all_deals_cancelled, :from => "AllDealsCancelled", :required => false

      
      xml_accessor :usages, :as => [], :from => "Usage", :required => false

      
      xml_accessor :excluded_territory_codes, :as => [], :from => "ExcludedTerritoryCode", :required => false

      
      xml_accessor :territory_codes, :as => [], :from => "TerritoryCode", :required => false

      
      xml_accessor :excluded_distribution_channels, :as => [], :from => "ExcludedDistributionChannel", :required => false

      
      xml_accessor :distribution_channels, :as => [], :from => "DistributionChannel", :required => false

      
      xml_accessor :price_informations, :as => [], :from => "PriceInformation", :required => false

      xml_accessor :promotional_code, :from => "PromotionalCode", :required => false

      xml_accessor :promotional?, :from => "IsPromotional", :required => false

      
      xml_accessor :validity_periods, :as => [], :from => "ValidityPeriod", :required => true

      xml_accessor :consumer_rental_period, :from => "ConsumerRentalPeriod", :required => false

      xml_accessor :pre_order_release_date, :from => "PreOrderReleaseDate", :required => false

      xml_accessor :pre_order_preview_date, :from => "PreOrderPreviewDate", :required => false

      xml_accessor :exclusive?, :from => "IsExclusive", :required => false

      
      xml_accessor :related_release_offer_sets, :as => [], :from => "RelatedReleaseOfferSet", :required => false

      xml_accessor :physical_returns, :from => "PhysicalReturns", :required => false

      xml_accessor :number_of_products_per_carton, :from => "NumberOfProductsPerCarton", :required => false

      
      xml_accessor :rights_claim_policies, :as => [], :from => "RightsClaimPolicy", :required => false

      
      xml_accessor :web_policies, :as => [], :from => "WebPolicy", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
