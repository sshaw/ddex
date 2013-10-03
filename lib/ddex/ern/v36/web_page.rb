require "roxml"
require "ddex/element"

require "ddex/ern/v36/name"
require "ddex/ern/v36/party_id"
require "ddex/ern/v36/release_id"

module DDEX module ERN module V36

class WebPage < Element
  include ROXML

      
    
  
  xml_name "WebPage"

      
      xml_accessor :party_ids, :as => [DDEX::ERN::V36::PartyId], :from => "PartyId", :required => false

      
      xml_accessor :release_ids, :as => [DDEX::ERN::V36::ReleaseId], :from => "ReleaseId", :required => false

      xml_accessor :page_name, :as => DDEX::ERN::V36::Name, :from => "PageName", :required => false

      xml_accessor :url, :from => "URL", :required => false

      xml_accessor :user_name, :from => "UserName", :required => false

      xml_accessor :password, :from => "Password", :required => false



  
end

end end end
