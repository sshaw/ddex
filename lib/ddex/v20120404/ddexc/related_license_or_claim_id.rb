require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/license_or_claim_update_reason"
require "ddex/v20120404/ddexc/rights_agreement_id"

module DDEX module V20120404 module DDEXC

class RelatedLicenseOrClaimId < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "RelatedLicenseOrClaimId"

      xml_accessor :license_or_claim_id, :as => DDEX::V20120404::DDEXC::RightsAgreementId, :from => "LicenseOrClaimId", :required => false

      xml_accessor :license_or_claim_update_reason, :as => DDEX::V20120404::DDEXC::LicenseOrClaimUpdateReason, :from => "LicenseOrClaimUpdateReason", :required => false



  
end

end end end
