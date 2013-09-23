require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/musical_work_contributor"

module DDEX module V20120404 module DDEXC

class MusicalWorkDetailsByTerritory < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "MusicalWorkDetailsByTerritory"

      
      xml_accessor :excluded_territory_codes, :as => [], :from => "ExcludedTerritoryCode", :required => false

      
      xml_accessor :territory_codes, :as => [], :from => "TerritoryCode", :required => false

      
      xml_accessor :musical_work_contributors, :as => [], :from => "MusicalWorkContributor", :required => true



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
