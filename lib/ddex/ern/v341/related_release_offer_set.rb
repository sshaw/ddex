require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/description"
require "ddex/v20120404/ddexc/release_id"

module DDEX module ERN module V341

class Deal < Element; include ROXML end

class RelatedReleaseOfferSet < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "RelatedReleaseOfferSet"

      xml_accessor :release_description, :as => DDEX::V20120404::DDEXC::Description, :from => "ReleaseDescription", :required => false

      
      xml_accessor :release_ids, :as => [DDEX::V20120404::DDEXC::ReleaseId], :from => "ReleaseId", :required => false

      
      xml_accessor :deals, :as => [DDEX::ERN::V341::Deal], :from => "Deal", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
