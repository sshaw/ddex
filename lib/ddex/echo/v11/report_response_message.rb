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

require "ddex/echo/v11/ws_acknowledgement"
require "ddex/v20110120/ddexc/file"
require "ddex/v20110120/ddexc/report_format"
require "ddex/v20110120/ddexc/report_type"

module DDEX module ECHO module V11  # :nodoc: all

class ReportResponseMessage < DDEX::ECHO::V11::WsAcknowledgement
  include ROXML

    setns "echo", "http://ddex.net/xml/2011/echo/11"

  xml_name "ReportResponseMessage"

      xml_accessor :ticket_id, :from => "TicketId", :required => true
      xml_accessor :report_type, :as => DDEX::V20110120::DDEXC::ReportType, :from => "ReportType", :required => true
      xml_accessor :report_format, :as => DDEX::V20110120::DDEXC::ReportFormat, :from => "ReportFormat", :required => true
      xml_accessor :file, :as => DDEX::V20110120::DDEXC::File, :from => "File", :required => false


  
      xml_accessor :message_version_id, :from => "@MessageVersionId", :required => true
    
  

end

end end end
