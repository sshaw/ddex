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


module DDEX module V20110120 module DDEXC  # :nodoc: all

class DDEX::V20110120::DDEXC::FulfillmentDate < Element
  include ROXML


  xml_name "FulfillmentDate"

      xml_accessor :fulfillment_date, :as => Date, :from => "FulfillmentDate", :required => true
      xml_accessor :resource_release_references, :as => [], :from => "ResourceReleaseReference", :required => false


  

end

end end end