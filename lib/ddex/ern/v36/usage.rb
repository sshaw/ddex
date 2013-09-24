require "roxml"
require "ddex/element"

require "ddex/ern/v36/carrier_type"
require "ddex/ern/v36/distribution_channel_type"
require "ddex/ern/v36/technical_instantiation"
require "ddex/ern/v36/use_type"
require "ddex/ern/v36/user_interface_type"

module DDEX module ERN module V36

class Usage < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "Usage"

      
      xml_accessor :use_types, :as => [DDEX::ERN::V36::UseType], :from => "UseType", :required => true

      
      xml_accessor :user_interface_types, :as => [DDEX::ERN::V36::UserInterfaceType], :from => "UserInterfaceType", :required => false

      
      xml_accessor :distribution_channel_types, :as => [DDEX::ERN::V36::DistributionChannelType], :from => "DistributionChannelType", :required => false

      
      xml_accessor :carrier_types, :as => [DDEX::ERN::V36::CarrierType], :from => "CarrierType", :required => false

      xml_accessor :technical_instantiation, :as => DDEX::ERN::V36::TechnicalInstantiation, :from => "TechnicalInstantiation", :required => false

      xml_accessor :number_of_usages, :as => Integer, :from => "NumberOfUsages", :required => false



  
end

end end end
