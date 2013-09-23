require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/carrier_type"
require "ddex/v20120404/ddexc/distribution_channel_type"
require "ddex/v20120404/ddexc/use_type"
require "ddex/v20120404/ddexc/user_interface_type"

module DDEX module V20120404 module DDEXC

class NumberOfSubscribers < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "NumberOfSubscribers"

      xml_accessor :quantity, :from => "Quantity", :required => true

      
      xml_accessor :use_types, :as => [], :from => "UseType", :required => true

      
      xml_accessor :user_interface_types, :as => [], :from => "UserInterfaceType", :required => false

      
      xml_accessor :distribution_channel_types, :as => [], :from => "DistributionChannelType", :required => false

      
      xml_accessor :carrier_types, :as => [], :from => "CarrierType", :required => false



  
end

end end end
