require "roxml"
require "ddex/element"

require "ddex/ern/v36/messaging_party"

module DDEX module ERN module V36

class MessageAuditTrailEvent < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "MessageAuditTrailEvent"

      xml_accessor :messaging_party_descriptor, :as => DDEX::ERN::V36::MessagingParty, :from => "MessagingPartyDescriptor", :required => true

      xml_accessor :date_time, :as => DateTime, :from => "DateTime", :required => true



  
end

end end end
