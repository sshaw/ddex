require "roxml"
require "ddex/element"

require "ddex/ern/v36/commercial_model_type"
require "ddex/ern/v36/consumer_rental_period"
require "ddex/ern/v36/dsp"
require "ddex/ern/v36/dsp"
require "ddex/ern/v36/event_date"
require "ddex/ern/v36/event_date"
require "ddex/ern/v36/period"
require "ddex/ern/v36/physical_returns"
require "ddex/ern/v36/price_information"
require "ddex/ern/v36/promotional_code"
require "ddex/ern/v36/related_release_offer_set"
require "ddex/ern/v36/rights_claim_policy"
require "ddex/ern/v36/usage"
require "ddex/ern/v36/web_policy"

module DDEX module ERN module V36

class DealTerms < Element
  include ROXML

      
    
  
  xml_name "DealTerms"

      
      xml_accessor :commercial_model_types, :as => [DDEX::ERN::V36::CommercialModelType], :from => "CommercialModelType", :required => false

      xml_accessor :take_down, :from => "TakeDown", :required => false

      xml_accessor :all_deals_cancelled, :from => "AllDealsCancelled", :required => false

      
      xml_accessor :usages, :as => [DDEX::ERN::V36::Usage], :from => "Usage", :required => false

      
      xml_accessor :excluded_territory_codes, :as => [], :from => "ExcludedTerritoryCode", :required => false

      
      xml_accessor :territory_codes, :as => [], :from => "TerritoryCode", :required => false

      
      xml_accessor :excluded_distribution_channels, :as => [DDEX::ERN::V36::DSP], :from => "ExcludedDistributionChannel", :required => false

      
      xml_accessor :distribution_channels, :as => [DDEX::ERN::V36::DSP], :from => "DistributionChannel", :required => false

      
      xml_accessor :price_informations, :as => [DDEX::ERN::V36::PriceInformation], :from => "PriceInformation", :required => false

      xml_accessor :promotional_code, :as => DDEX::ERN::V36::PromotionalCode, :from => "PromotionalCode", :required => false

      xml_accessor :promotional?, :from => "IsPromotional", :required => false

      
      xml_accessor :validity_periods, :as => [DDEX::ERN::V36::Period], :from => "ValidityPeriod", :required => true

      xml_accessor :consumer_rental_period, :as => DDEX::ERN::V36::ConsumerRentalPeriod, :from => "ConsumerRentalPeriod", :required => false

      xml_accessor :pre_order_release_date, :as => DDEX::ERN::V36::EventDate, :from => "PreOrderReleaseDate", :required => false

      xml_accessor :pre_order_preview_date, :as => DDEX::ERN::V36::EventDate, :from => "PreOrderPreviewDate", :required => false

      xml_accessor :release_display_start_date, :as => DateTime, :from => "ReleaseDisplayStartDate", :required => false

      xml_accessor :track_listing_preview_start_date, :as => DateTime, :from => "TrackListingPreviewStartDate", :required => false

      xml_accessor :cover_art_preview_start_date, :as => DateTime, :from => "CoverArtPreviewStartDate", :required => false

      xml_accessor :clip_preview_start_date, :as => DateTime, :from => "ClipPreviewStartDate", :required => false

      xml_accessor :exclusive?, :from => "IsExclusive", :required => false

      
      xml_accessor :related_release_offer_sets, :as => [DDEX::ERN::V36::RelatedReleaseOfferSet], :from => "RelatedReleaseOfferSet", :required => false

      xml_accessor :physical_returns, :as => DDEX::ERN::V36::PhysicalReturns, :from => "PhysicalReturns", :required => false

      xml_accessor :number_of_products_per_carton, :as => Integer, :from => "NumberOfProductsPerCarton", :required => false

      
      xml_accessor :rights_claim_policies, :as => [DDEX::ERN::V36::RightsClaimPolicy], :from => "RightsClaimPolicy", :required => false

      
      xml_accessor :web_policies, :as => [DDEX::ERN::V36::WebPolicy], :from => "WebPolicy", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
