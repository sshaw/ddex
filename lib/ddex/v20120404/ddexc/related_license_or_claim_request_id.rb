require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/license_or_claim_request_update_reason"
require "ddex/v20120404/ddexc/proprietary_id"

module DDEX module V20120404 module DDEXC

class RelatedLicenseOrClaimRequestId < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "RelatedLicenseOrClaimRequestId"

      xml_accessor :license_or_claim_request_id, :from => "LicenseOrClaimRequestId", :required => false

      xml_accessor :license_or_claim_request_update_reason, :from => "LicenseOrClaimRequestUpdateReason", :required => false



  
end

end end end
