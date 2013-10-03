require "roxml"
require "ddex/element"

require "ddex/ern/v36/comment"
require "ddex/ern/v36/message_audit_trail"
require "ddex/ern/v36/messaging_party"
require "ddex/ern/v36/messaging_party"
require "ddex/ern/v36/messaging_party"

module DDEX module ERN module V36

class MessageHeader < Element
  include ROXML

      
    
  
  xml_name "MessageHeader"

      xml_accessor :message_thread_id, :from => "MessageThreadId", :required => true

      xml_accessor :message_id, :from => "MessageId", :required => true

      xml_accessor :message_file_name, :from => "MessageFileName", :required => false

      xml_accessor :message_sender, :as => DDEX::ERN::V36::MessagingParty, :from => "MessageSender", :required => true

      xml_accessor :sent_on_behalf_of, :as => DDEX::ERN::V36::MessagingParty, :from => "SentOnBehalfOf", :required => false

      xml_accessor :message_recipient, :as => DDEX::ERN::V36::MessagingParty, :from => "MessageRecipient", :required => true

      xml_accessor :message_created_date_time, :as => DateTime, :from => "MessageCreatedDateTime", :required => true

      xml_accessor :message_audit_trail, :as => DDEX::ERN::V36::MessageAuditTrail, :from => "MessageAuditTrail", :required => false

      xml_accessor :comment, :as => DDEX::ERN::V36::Comment, :from => "Comment", :required => false

      xml_accessor :message_control_type, :from => "MessageControlType", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
