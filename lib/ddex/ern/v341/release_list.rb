require "roxml"
require "ddex/element"

require "ddex/ern/v341/release"

module DDEX module ERN module V341

class ReleaseList < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "ReleaseList"

      
      xml_accessor :releases, :as => [], :from => "Release", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
