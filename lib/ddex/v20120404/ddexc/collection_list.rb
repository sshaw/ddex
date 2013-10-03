require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/collection"

module DDEX module V20120404 module DDEXC

class CollectionList < Element
  include ROXML

      
    
  
  xml_name "CollectionList"

      
      xml_accessor :collections, :as => [DDEX::V20120404::DDEXC::Collection], :from => "Collection", :required => true



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
