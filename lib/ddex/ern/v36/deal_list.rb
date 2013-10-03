require "roxml"
require "ddex/element"

require "ddex/ern/v36/release_deal"

module DDEX module ERN module V36

class DealList < Element
  include ROXML

      
    
  
  xml_name "DealList"

      
      xml_accessor :release_deals, :as => [DDEX::ERN::V36::ReleaseDeal], :from => "ReleaseDeal", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
