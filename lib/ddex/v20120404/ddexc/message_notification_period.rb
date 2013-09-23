require "roxml"
require "ddex/element"


module DDEX module V20120404 module DDEXC

class MessageNotificationPeriod < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "MessageNotificationPeriod"

      xml_accessor :start_date, :as => DateTime, :from => "StartDate", :required => true

      xml_accessor :end_date, :as => DateTime, :from => "EndDate", :required => true



  
end

end end end
