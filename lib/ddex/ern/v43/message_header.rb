#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v43/message_audit_trail"
require "ddex/ern/v43/messaging_party_without_code"

module DDEX module ERN module V43  # :nodoc: all

class DDEX::ERN::V43::MessageHeader < Element
  include ROXML


  xml_name "MessageHeader"

      xml_accessor :message_thread_id, :from => "MessageThreadId", :required => false
      xml_accessor :message_id, :from => "MessageId", :required => true
      xml_accessor :message_file_name, :from => "MessageFileName", :required => false
      xml_accessor :message_sender, :as => DDEX::ERN::V43::MessagingPartyWithoutCode, :from => "MessageSender", :required => true
      xml_accessor :sent_on_behalf_of, :as => DDEX::ERN::V43::MessagingPartyWithoutCode, :from => "SentOnBehalfOf", :required => false
      xml_accessor :message_recipients, :as => [DDEX::ERN::V43::MessagingPartyWithoutCode], :from => "MessageRecipient", :required => true
      xml_accessor :message_created_date_time, :as => DateTime, :from => "MessageCreatedDateTime", :required => true
      xml_accessor :message_audit_trail, :as => DDEX::ERN::V43::MessageAuditTrail, :from => "MessageAuditTrail", :required => false
      xml_accessor :message_control_type, :from => "MessageControlType", :required => false


  

end

end end end
