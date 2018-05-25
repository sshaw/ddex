#
# Auto-generated by jaxb2ruby v0.0.1 on 2016-07-11 13:50:27 +0100
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/v20110120/ddexc/carrier_type"
require "ddex/v20110120/ddexc/distribution_channel_type"
require "ddex/v20110120/ddexc/technical_instantiation"
require "ddex/v20110120/ddexc/use_type"
require "ddex/v20110120/ddexc/user_interface_type"

module DDEX module V20110120 module DDEXC  # :nodoc: all

class DDEX::V20110120::DDEXC::Usage < Element
  include ROXML


  xml_name "Usage"

      xml_accessor :use_types, :as => [DDEX::V20110120::DDEXC::UseType], :from => "UseType", :required => true
      xml_accessor :user_interface_types, :as => [DDEX::V20110120::DDEXC::UserInterfaceType], :from => "UserInterfaceType", :required => false
      xml_accessor :distribution_channel_types, :as => [DDEX::V20110120::DDEXC::DistributionChannelType], :from => "DistributionChannelType", :required => false
      xml_accessor :carrier_types, :as => [DDEX::V20110120::DDEXC::CarrierType], :from => "CarrierType", :required => false
      xml_accessor :technical_instantiation, :as => DDEX::V20110120::DDEXC::TechnicalInstantiation, :from => "TechnicalInstantiation", :required => false
      xml_accessor :number_of_usages, :as => Integer, :from => "NumberOfUsages", :required => false


  

end

end end end