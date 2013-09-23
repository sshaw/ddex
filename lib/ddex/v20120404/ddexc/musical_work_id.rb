require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/proprietary_id"

module DDEX module V20120404 module DDEXC

class MusicalWorkId < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "MusicalWorkId"

      xml_accessor :iswc, :from => "ISWC", :required => false

      xml_accessor :opus_number, :from => "OpusNumber", :required => false

      
      xml_accessor :composer_catalog_numbers, :as => [], :from => "ComposerCatalogNumber", :required => false

      
      xml_accessor :proprietary_ids, :as => [], :from => "ProprietaryId", :required => false



  
      xml_accessor :replaced?, :from => "@IsReplaced" 
    
  
end

end end end
