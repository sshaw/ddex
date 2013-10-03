require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/carrier_type"
require "ddex/v20120404/ddexc/distribution_channel_type"
require "ddex/v20120404/ddexc/release_type"
require "ddex/v20120404/ddexc/use_type"
require "ddex/v20120404/ddexc/user_interface_type"

module DDEX module V20120404 module DDEXC

class RecordCompanyMarketShareData < Element
  include ROXML

      
    
  
  xml_name "RecordCompanyMarketShareData"

      
      xml_accessor :release_types, :as => [DDEX::V20120404::DDEXC::ReleaseType], :from => "ReleaseType", :required => false

      xml_accessor :units_sold_total, :as => Integer, :from => "UnitsSoldTotal", :required => true

      
      xml_accessor :use_types, :as => [DDEX::V20120404::DDEXC::UseType], :from => "UseType", :required => false

      
      xml_accessor :user_interface_types, :as => [DDEX::V20120404::DDEXC::UserInterfaceType], :from => "UserInterfaceType", :required => false

      
      xml_accessor :distribution_channel_types, :as => [DDEX::V20120404::DDEXC::DistributionChannelType], :from => "DistributionChannelType", :required => false

      
      xml_accessor :carrier_types, :as => [DDEX::V20120404::DDEXC::CarrierType], :from => "CarrierType", :required => false



  
end

end end end
