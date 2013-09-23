require "roxml"
require "ddex/element"

require "ddex/ern/v341/condition"

module DDEX module ERN module V341

class RightsClaimPolicy < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "RightsClaimPolicy"

      xml_accessor :condition, :from => "Condition", :required => true

      xml_accessor :rights_claim_policy_type, :from => "RightsClaimPolicyType", :required => true



  
end

end end end
