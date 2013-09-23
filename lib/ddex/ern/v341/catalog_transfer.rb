require "roxml"
require "ddex/element"

require "ddex/ern/v341/catalog_release_reference_list"
require "ddex/v20120404/ddexc/event_date"
require "ddex/v20120404/ddexc/party_descriptor"
require "ddex/v20120404/ddexc/party_descriptor"

module DDEX module ERN module V341

class CatalogTransfer < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "CatalogTransfer"

      xml_accessor :catalog_transfer_completed, :from => "CatalogTransferCompleted", :required => false

      xml_accessor :effective_transfer_date, :from => "EffectiveTransferDate", :required => false

      xml_accessor :catalog_release_reference_list, :from => "CatalogReleaseReferenceList", :required => true

      
      xml_accessor :excluded_territory_codes, :as => [], :from => "ExcludedTerritoryCode", :required => false

      
      xml_accessor :territory_codes, :as => [], :from => "TerritoryCode", :required => false

      xml_accessor :transferring_from, :from => "TransferringFrom", :required => true

      xml_accessor :transferring_to, :from => "TransferringTo", :required => true



  
end

end end end
