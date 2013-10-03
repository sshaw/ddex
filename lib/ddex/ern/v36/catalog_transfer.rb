require "roxml"
require "ddex/element"

require "ddex/ern/v36/catalog_release_reference_list"
require "ddex/ern/v36/event_date"
require "ddex/ern/v36/party_descriptor"
require "ddex/ern/v36/party_descriptor"

module DDEX module ERN module V36

class CatalogTransfer < Element
  include ROXML

      
    
  
  xml_name "CatalogTransfer"

      xml_accessor :catalog_transfer_completed, :from => "CatalogTransferCompleted", :required => false

      xml_accessor :effective_transfer_date, :as => DDEX::ERN::V36::EventDate, :from => "EffectiveTransferDate", :required => false

      xml_accessor :catalog_release_reference_list, :as => DDEX::ERN::V36::CatalogReleaseReferenceList, :from => "CatalogReleaseReferenceList", :required => true

      
      xml_accessor :excluded_territory_codes, :as => [], :from => "ExcludedTerritoryCode", :required => false

      
      xml_accessor :territory_codes, :as => [], :from => "TerritoryCode", :required => false

      xml_accessor :transferring_from, :as => DDEX::ERN::V36::PartyDescriptor, :from => "TransferringFrom", :required => true

      xml_accessor :transferring_to, :as => DDEX::ERN::V36::PartyDescriptor, :from => "TransferringTo", :required => true



  
end

end end end
