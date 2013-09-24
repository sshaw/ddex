require "roxml"
require "ddex/element"

require "ddex/ern/v36/musical_work_contributor"

module DDEX module ERN module V36

class MusicalWorkDetailsByTerritory < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "MusicalWorkDetailsByTerritory"

      
      xml_accessor :excluded_territory_codes, :as => [], :from => "ExcludedTerritoryCode", :required => false

      
      xml_accessor :territory_codes, :as => [], :from => "TerritoryCode", :required => false

      
      xml_accessor :musical_work_contributors, :as => [DDEX::ERN::V36::MusicalWorkContributor], :from => "MusicalWorkContributor", :required => true



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
