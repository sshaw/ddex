require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/collection"

module DDEX module V20120404 module DDEXC

class CollectionList < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "CollectionList"

      
      xml_accessor :collections, :as => [], :from => "Collection", :required => true



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
