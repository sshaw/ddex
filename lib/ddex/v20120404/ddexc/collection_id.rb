require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/catalog_number"
require "ddex/v20120404/ddexc/icpn"
require "ddex/v20120404/ddexc/proprietary_id"

module DDEX module V20120404 module DDEXC

class CollectionId < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "CollectionId"

      xml_accessor :g_rid, :from => "GRid", :required => false

      xml_accessor :isrc, :from => "ISRC", :required => false

      xml_accessor :isan, :from => "ISAN", :required => false

      xml_accessor :visan, :from => "VISAN", :required => false

      xml_accessor :icpn, :from => "ICPN", :required => false

      xml_accessor :catalog_number, :from => "CatalogNumber", :required => false

      
      xml_accessor :proprietary_ids, :as => [], :from => "ProprietaryId", :required => false



  
      xml_accessor :replaced?, :from => "@IsReplaced" 
    
  
end

end end end
