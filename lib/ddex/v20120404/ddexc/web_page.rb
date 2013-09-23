require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/name"
require "ddex/v20120404/ddexc/party_id"
require "ddex/v20120404/ddexc/release_id"

module DDEX module V20120404 module DDEXC

class WebPage < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "WebPage"

      
      xml_accessor :party_ids, :as => [], :from => "PartyId", :required => false

      
      xml_accessor :release_ids, :as => [], :from => "ReleaseId", :required => false

      xml_accessor :page_name, :from => "PageName", :required => false

      xml_accessor :url, :from => "URL", :required => false

      xml_accessor :user_name, :from => "UserName", :required => false

      xml_accessor :password, :from => "Password", :required => false



  
end

end end end
