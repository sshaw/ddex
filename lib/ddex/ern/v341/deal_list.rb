require "roxml"
require "ddex/element"

require "ddex/ern/v341/release_deal"

module DDEX module ERN module V341

class DealList < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "DealList"

      
      xml_accessor :release_deals, :as => [], :from => "ReleaseDeal", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
