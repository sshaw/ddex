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

require "ddex/v2011/amep/v11/ws_acknowledgement_message"
require "ddex/v20110120/ddexc/file"

module DDEX module V2011 module AMEP module V11  # :nodoc: all

class WsBatchConfirmationMessage < DDEX::V2011::AMEP::V11::WsAcknowledgementMessage
  include ROXML

    setns "amep", "http://ddex.net/xml/2011/amep/11"

  xml_name "WsBatchConfirmationMessage"

      xml_accessor :batch_transfer_status, :from => "BatchTransferStatus", :required => true
      xml_accessor :not_transferred_files, :as => [DDEX::V20110120::DDEXC::File], :from => "NotTransferredFile", :required => false


  

end

end end end end
