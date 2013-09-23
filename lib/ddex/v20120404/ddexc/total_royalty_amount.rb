require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/release_type"
require "ddex/v20120404/ddexc/rights_type"
require "ddex/v20120404/ddexc/royalty_amount"

module DDEX module V20120404 module DDEXC

class TotalRoyaltyAmount < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "TotalRoyaltyAmount"

      
      xml_accessor :release_types, :as => [DDEX::V20120404::DDEXC::ReleaseType], :from => "ReleaseType", :required => false

      
      xml_accessor :rights_types, :as => [DDEX::V20120404::DDEXC::RightsType], :from => "RightsType", :required => false

      xml_accessor :royalty_amount, :as => DDEX::V20120404::DDEXC::RoyaltyAmount, :from => "RoyaltyAmount", :required => true



  
end

end end end
