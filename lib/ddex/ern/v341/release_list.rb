require "roxml"
require "ddex/element"

require "ddex/ern/v341/release"

module DDEX module ERN module V341

class ReleaseList < Element
  include ROXML

      
    
  
  xml_name "ReleaseList"

      
      xml_accessor :releases, :as => [DDEX::ERN::V341::Release], :from => "Release", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
