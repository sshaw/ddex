require "roxml"
require "ddex/element"

require "ddex/ern/v36/catalog_number"
require "ddex/ern/v36/icpn"
require "ddex/ern/v36/proprietary_id"

module DDEX module ERN module V36

class CollectionId < Element
  include ROXML

      
    
  
  xml_name "CollectionId"

      xml_accessor :g_rid, :from => "GRid", :required => false

      xml_accessor :isrc, :from => "ISRC", :required => false

      xml_accessor :isan, :from => "ISAN", :required => false

      xml_accessor :visan, :from => "VISAN", :required => false

      xml_accessor :icpn, :as => DDEX::ERN::V36::ICPN, :from => "ICPN", :required => false

      xml_accessor :catalog_number, :as => DDEX::ERN::V36::CatalogNumber, :from => "CatalogNumber", :required => false

      
      xml_accessor :proprietary_ids, :as => [DDEX::ERN::V36::ProprietaryId], :from => "ProprietaryId", :required => false



  
      xml_accessor :replaced?, :from => "@IsReplaced", :required => false
    
  
end

end end end
