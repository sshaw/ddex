require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/proprietary_id"

module DDEX module V20120404 module DDEXC

class RightsAgreementId < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "RightsAgreementId"

      
      xml_accessor :mwlis, :as => [], :from => "MWLI", :required => false

      
      xml_accessor :proprietary_ids, :as => [DDEX::V20120404::DDEXC::ProprietaryId], :from => "ProprietaryId", :required => false



  
end

end end end
