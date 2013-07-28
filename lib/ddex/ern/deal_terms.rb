module DDEX
  module ERN
    class DealTerms < Element
      include Language

      xml_accessor :all_deals_cancelled?
      xml_accessor :commercial_model_type, :as => [CommercialModelType]
      xml_accessor :distribution_channels, :as => [DSP]
      xml_accessor :excluded_distribution_channels, :as => [DSP]
      xml_accessor :price_information, :as => [PriceInformation]
      xml_accessor :take_down?
      # Dup (SoundRecDetails)
      xml_accessor :territories, :from => "TerritoryCode", :as => []
      xml_accessor :excluded_territories, :from => "ExcludedTerritoryCode", :as => []
      ##
      xml_accessor :usage, :as => [Usage]
    end
  end
end
