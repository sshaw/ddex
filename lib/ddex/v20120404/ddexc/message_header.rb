require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/comment"
require "ddex/v20120404/ddexc/message_audit_trail"
require "ddex/v20120404/ddexc/messaging_party"
require "ddex/v20120404/ddexc/messaging_party"
require "ddex/v20120404/ddexc/messaging_party"

module DDEX module V20120404 module DDEXC

class MessageHeader < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "MessageHeader"

      xml_accessor :message_thread_id, :from => "MessageThreadId", :required => true

      xml_accessor :message_id, :from => "MessageId", :required => true

      xml_accessor :message_file_name, :from => "MessageFileName", :required => false

      xml_accessor :message_sender, :from => "MessageSender", :required => true

      xml_accessor :sent_on_behalf_of, :from => "SentOnBehalfOf", :required => false

      xml_accessor :message_recipient, :from => "MessageRecipient", :required => true

      xml_accessor :message_created_date_time, :from => "MessageCreatedDateTime", :required => true

      xml_accessor :message_audit_trail, :from => "MessageAuditTrail", :required => false

      xml_accessor :comment, :from => "Comment", :required => false

      xml_accessor :message_control_type, :from => "MessageControlType", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
