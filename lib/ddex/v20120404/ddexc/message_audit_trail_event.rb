require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/messaging_party"

module DDEX module V20120404 module DDEXC

class MessageAuditTrailEvent < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "MessageAuditTrailEvent"

      xml_accessor :messaging_party_descriptor, :as => DDEX::V20120404::DDEXC::MessagingParty, :from => "MessagingPartyDescriptor", :required => true

      xml_accessor :date_time, :as => DateTime, :from => "DateTime", :required => true



  
end

end end end
