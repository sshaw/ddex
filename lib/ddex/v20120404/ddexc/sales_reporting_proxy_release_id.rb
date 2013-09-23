require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/reason"
require "ddex/v20120404/ddexc/reason_type"
require "ddex/v20120404/ddexc/release_id"

module DDEX module V20120404 module DDEXC

class SalesReportingProxyReleaseId < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "SalesReportingProxyReleaseId"

      xml_accessor :release_id, :as => DDEX::V20120404::DDEXC::ReleaseId, :from => "ReleaseId", :required => true

      xml_accessor :reason, :as => DDEX::V20120404::DDEXC::Reason, :from => "Reason", :required => false

      xml_accessor :reason_type, :as => DDEX::V20120404::DDEXC::ReasonType, :from => "ReasonType", :required => true



  
end

end end end
