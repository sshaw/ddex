require "roxml"
require "ddex/element"

require "ddex/ern/v36/message_audit_trail_event"

module DDEX module ERN module V36

class MessageAuditTrail < Element
  include ROXML

      
    
  
  xml_name "MessageAuditTrail"

      
      xml_accessor :message_audit_trail_events, :as => [DDEX::ERN::V36::MessageAuditTrailEvent], :from => "MessageAuditTrailEvent", :required => true



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
