require "roxml"
require "ddex/element"

require "ddex/ern/v36/proprietary_id"

module DDEX module ERN module V36

class MusicalWorkId < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "MusicalWorkId"

      xml_accessor :iswc, :from => "ISWC", :required => false

      xml_accessor :opus_number, :from => "OpusNumber", :required => false

      
      xml_accessor :composer_catalog_numbers, :as => [], :from => "ComposerCatalogNumber", :required => false

      
      xml_accessor :proprietary_ids, :as => [DDEX::ERN::V36::ProprietaryId], :from => "ProprietaryId", :required => false



  
      xml_accessor :replaced?, :from => "@IsReplaced", :required => false
    
  
end

end end end
