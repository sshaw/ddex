require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/event_date"
require "ddex/v20120404/ddexc/event_date"
require "ddex/v20120404/ddexc/event_date_time"
require "ddex/v20120404/ddexc/event_date_time"

module DDEX module V20120404 module DDEXC

class Period < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "Period"

      xml_accessor :start_date_time, :as => DDEX::V20120404::DDEXC::EventDateTime, :from => "StartDateTime", :required => false

      xml_accessor :end_date_time, :as => DDEX::V20120404::DDEXC::EventDateTime, :from => "EndDateTime", :required => false

      xml_accessor :start_date, :as => DDEX::V20120404::DDEXC::EventDate, :from => "StartDate", :required => false

      xml_accessor :end_date, :as => DDEX::V20120404::DDEXC::EventDate, :from => "EndDate", :required => false



  
end

end end end
