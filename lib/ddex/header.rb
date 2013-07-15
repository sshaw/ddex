require "ddex/messaging_party"

module DDEX
  # MessageHeader
  class Header < Element

    #xml_accessor :audit_trail, :from => "MessageAuditTrail", :as => 
    xml_accessor :comment, :from => "Comment"
    xml_accessor :comment_language, :in => "@LanguageAndScriptCode", :from => "Comment"
    xml_accessor :created_date_time, :from => "MessageCreatedDateTime", :as => DateTime
    #xml_accessor :control_type, :from => "MessageControlType", :as => 

    xml_accessor :id, :from => "MessageId"
    xml_accessor :sender, :from => "MessageSender", :as => MessagingParty
    xml_accessor :sent_on_behalf_of, :from => "SendOnBehalfOf", :as => MessagingParty
    xml_accessor :recipient, :from => "MessageRecipient", :as => MessagingParty
    xml_accessor :thread_id, :from => "MessageThreadId"
  end
end
