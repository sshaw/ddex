require "roxml"
require "ddex/element"

require "ddex/ern/v36/party_descriptor"

module DDEX module ERN module V36

class Membership < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "Membership"

      xml_accessor :organization, :as => DDEX::ERN::V36::PartyDescriptor, :from => "Organization", :required => true

      xml_accessor :membership_type, :from => "MembershipType", :required => true

      xml_accessor :start_date, :as => DateTime, :from => "StartDate", :required => false

      xml_accessor :end_date, :as => DateTime, :from => "EndDate", :required => false



  
end

end end end
