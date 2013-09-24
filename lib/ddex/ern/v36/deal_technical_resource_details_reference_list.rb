require "roxml"
require "ddex/element"


module DDEX module ERN module V36

class DealTechnicalResourceDetailsReferenceList < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "DealTechnicalResourceDetailsReferenceList"

      
      xml_accessor :deal_technical_resource_details_references, :as => [], :from => "DealTechnicalResourceDetailsReference", :required => true



  
end

end end end
