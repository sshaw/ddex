require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/catalog_number"
require "ddex/v20120404/ddexc/icpn"
require "ddex/v20120404/ddexc/proprietary_id"

module DDEX module V20120404 module DDEXC

class ReleaseId < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "ReleaseId"

      xml_accessor :g_rid, :from => "GRid", :required => false

      xml_accessor :isrc, :from => "ISRC", :required => false

      xml_accessor :icpn, :as => DDEX::V20120404::DDEXC::ICPN, :from => "ICPN", :required => false

      xml_accessor :catalog_number, :as => DDEX::V20120404::DDEXC::CatalogNumber, :from => "CatalogNumber", :required => false

      
      xml_accessor :proprietary_ids, :as => [DDEX::V20120404::DDEXC::ProprietaryId], :from => "ProprietaryId", :required => false



  
      xml_accessor :replaced?, :from => "@IsReplaced", :required => false
    
  
end

end end end
