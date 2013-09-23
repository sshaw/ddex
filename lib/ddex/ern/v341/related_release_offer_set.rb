require "roxml"
require "ddex/element"

require "ddex/ern/v341/deal"
require "ddex/v20120404/ddexc/description"
require "ddex/v20120404/ddexc/release_id"

module DDEX module ERN module V341

class RelatedReleaseOfferSet < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "RelatedReleaseOfferSet"

      xml_accessor :release_description, :from => "ReleaseDescription", :required => false

      
      xml_accessor :release_ids, :as => [], :from => "ReleaseId", :required => false

      
      xml_accessor :deals, :as => [], :from => "Deal", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
