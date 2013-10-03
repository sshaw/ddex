require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/catalog_number"
require "ddex/v20120404/ddexc/proprietary_id"

module DDEX module V20120404 module DDEXC

class SoundRecordingId < Element
  include ROXML

      
    
  
  xml_name "SoundRecordingId"

      xml_accessor :isrc, :from => "ISRC", :required => false

      xml_accessor :catalog_number, :as => DDEX::V20120404::DDEXC::CatalogNumber, :from => "CatalogNumber", :required => false

      
      xml_accessor :proprietary_ids, :as => [DDEX::V20120404::DDEXC::ProprietaryId], :from => "ProprietaryId", :required => false



  
      xml_accessor :replaced?, :from => "@IsReplaced", :required => false
    
  
end

end end end
