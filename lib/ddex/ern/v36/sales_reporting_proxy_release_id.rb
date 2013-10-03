require "roxml"
require "ddex/element"

require "ddex/ern/v36/reason"
require "ddex/ern/v36/reason_type"
require "ddex/ern/v36/release_id"

module DDEX module ERN module V36

class SalesReportingProxyReleaseId < Element
  include ROXML

      
    
  
  xml_name "SalesReportingProxyReleaseId"

      xml_accessor :release_id, :as => DDEX::ERN::V36::ReleaseId, :from => "ReleaseId", :required => true

      xml_accessor :reason, :as => DDEX::ERN::V36::Reason, :from => "Reason", :required => false

      xml_accessor :reason_type, :as => DDEX::ERN::V36::ReasonType, :from => "ReasonType", :required => true



  
end

end end end
