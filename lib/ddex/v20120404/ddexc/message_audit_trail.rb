require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/message_audit_trail_event"

module DDEX module V20120404 module DDEXC

class MessageAuditTrail < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "MessageAuditTrail"

      
      xml_accessor :message_audit_trail_events, :as => [], :from => "MessageAuditTrailEvent", :required => true



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
