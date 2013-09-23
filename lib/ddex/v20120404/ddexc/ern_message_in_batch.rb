require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/hash_sum"
require "ddex/v20120404/ddexc/message_action_type"
require "ddex/v20120404/ddexc/product_type"
require "ddex/v20120404/ddexc/release_id"

module DDEX module V20120404 module DDEXC

class ErnMessageInBatch < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "ErnMessageInBatch"

      xml_accessor :message_type, :from => "MessageType", :required => true

      xml_accessor :message_id, :from => "MessageId", :required => true

      xml_accessor :url, :from => "URL", :required => true

      
      xml_accessor :included_release_ids, :as => [], :from => "IncludedReleaseId", :required => true

      xml_accessor :delivery_type, :from => "DeliveryType", :required => true

      xml_accessor :product_type, :from => "ProductType", :required => true

      xml_accessor :signature, :from => "Signature", :required => false

      xml_accessor :hash_sum, :from => "HashSum", :required => false



  
end

end end end
