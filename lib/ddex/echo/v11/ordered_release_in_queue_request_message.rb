#
# Auto-generated by jaxb2ruby v0.0.1 on 2016-07-11 13:50:26 +0100
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/echo/v11/release_summary"
require "ddex/v2011/amep/v11/ws_message_header"
require "ddex/v20110120/ddexc/order_type"
require "ddex/v20110120/ddexc/party_descriptor"
require "ddex/v20110120/ddexc/period"

module DDEX module ECHO module V11  # :nodoc: all

class OrderedReleaseInQueueRequestMessage < Element
  include ROXML

    setns "echo", "http://ddex.net/xml/2011/echo/11"

  xml_name "OrderedReleaseInQueueRequestMessage"

      xml_accessor :message_header, :as => DDEX::V2011::AMEP::V11::WsMessageHeader, :from => "MessageHeader", :required => true
      xml_accessor :dsp, :as => DDEX::V20110120::DDEXC::PartyDescriptor, :from => "DSP", :required => true
      xml_accessor :order_type, :as => DDEX::V20110120::DDEXC::OrderType, :from => "OrderType", :required => false
      xml_accessor :releases, :as => [DDEX::ECHO::V11::ReleaseSummary], :from => "Release", :required => false
      xml_accessor :excluded_territory_codes, :from => "ExcludedTerritoryCode", :required => false
      xml_accessor :territory_codes, :from => "TerritoryCode", :required => false
      xml_accessor :period, :as => DDEX::V20110120::DDEXC::Period, :from => "Period", :required => false


  
      xml_accessor :message_version_id, :from => "@MessageVersionId", :required => true
    
  

end

end end end