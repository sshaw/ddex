require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/proprietary_id"

module DDEX module V20120404 module DDEXC

class SheetMusicId < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "SheetMusicId"

      xml_accessor :ismn, :from => "ISMN", :required => false

      
      xml_accessor :proprietary_ids, :as => [], :from => "ProprietaryId", :required => false



  
      xml_accessor :replaced?, :from => "@IsReplaced" 
    
  
end

end end end
