#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v43/all_territory_code"
require "ddex/ern/v43/period"
require "ddex/ern/v43/use_type"

module DDEX module ERN module V43  # :nodoc: all

class DDEX::ERN::V43::DelegatedUsageRights < Element
  include ROXML


  xml_name "DelegatedUsageRights"

      xml_accessor :use_types, :as => [DDEX::ERN::V43::UseType], :from => "UseType", :required => true
      xml_accessor :period_of_rights_delegation, :as => DDEX::ERN::V43::Period, :from => "PeriodOfRightsDelegation", :required => false
      xml_accessor :territory_of_rights_delegations, :as => [DDEX::ERN::V43::AllTerritoryCode], :from => "TerritoryOfRightsDelegation", :required => false


  

end

end end end
