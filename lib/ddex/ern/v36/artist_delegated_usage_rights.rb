require "roxml"
require "ddex/element"

require "ddex/ern/v36/period"
require "ddex/ern/v36/use_type"
require "ddex/ern/v36/user_interface_type"

module DDEX module ERN module V36

class ArtistDelegatedUsageRights < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "ArtistDelegatedUsageRights"

      
      xml_accessor :use_types, :as => [DDEX::ERN::V36::UseType], :from => "UseType", :required => true

      
      xml_accessor :user_interface_types, :as => [DDEX::ERN::V36::UserInterfaceType], :from => "UserInterfaceType", :required => false

      xml_accessor :period_of_rights_delegation, :as => DDEX::ERN::V36::Period, :from => "PeriodOfRightsDelegation", :required => true

      
      xml_accessor :territory_of_rights_delegations, :as => [], :from => "TerritoryOfRightsDelegation", :required => true

      xml_accessor :membership_type, :from => "MembershipType", :required => true



  
end

end end end
