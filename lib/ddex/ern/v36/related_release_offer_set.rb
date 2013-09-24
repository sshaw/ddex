require "roxml"
require "ddex/element"

require "ddex/ern/v36/description"
require "ddex/ern/v36/release_id"

module DDEX module ERN module V36

class Deal < Element; include ROXML end

class RelatedReleaseOfferSet < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "RelatedReleaseOfferSet"

      xml_accessor :release_description, :as => DDEX::ERN::V36::Description, :from => "ReleaseDescription", :required => false

      
      xml_accessor :release_ids, :as => [DDEX::ERN::V36::ReleaseId], :from => "ReleaseId", :required => false

      
      xml_accessor :deals, :as => [DDEX::ERN::V36::Deal], :from => "Deal", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
