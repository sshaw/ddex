require "roxml"
require "ddex/element"

require "ddex/ern/v36/proprietary_id"

module DDEX module ERN module V36

class TextId < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "TextId"

      xml_accessor :isbn, :from => "ISBN", :required => false

      xml_accessor :issn, :from => "ISSN", :required => false

      xml_accessor :sici, :from => "SICI", :required => false

      
      xml_accessor :proprietary_ids, :as => [DDEX::ERN::V36::ProprietaryId], :from => "ProprietaryId", :required => false



  
      xml_accessor :replaced?, :from => "@IsReplaced", :required => false
    
  
end

end end end
