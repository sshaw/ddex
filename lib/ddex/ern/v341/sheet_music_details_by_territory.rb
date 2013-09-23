require "roxml"
require "ddex/element"

require "ddex/ern/v341/technical_sheet_music_details"
require "ddex/v20120404/ddexc/c_line"
require "ddex/v20120404/ddexc/courtesy_line"
require "ddex/v20120404/ddexc/event_date"
require "ddex/v20120404/ddexc/fulfillment_date"
require "ddex/v20120404/ddexc/genre"
require "ddex/v20120404/ddexc/indirect_resource_contributor"
require "ddex/v20120404/ddexc/parental_warning_type"
require "ddex/v20120404/ddexc/resource_contributor"
require "ddex/v20120404/ddexc/title"

module DDEX module ERN module V341

class SheetMusicDetailsByTerritory < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "SheetMusicDetailsByTerritory"

      
      xml_accessor :excluded_territory_codes, :as => [], :from => "ExcludedTerritoryCode", :required => false

      
      xml_accessor :territory_codes, :as => [], :from => "TerritoryCode", :required => false

      
      xml_accessor :titles, :as => [], :from => "Title", :required => false

      
      xml_accessor :resource_contributors, :as => [], :from => "ResourceContributor", :required => false

      
      xml_accessor :indirect_resource_contributors, :as => [], :from => "IndirectResourceContributor", :required => false

      
      xml_accessor :c_lines, :as => [], :from => "CLine", :required => false

      xml_accessor :courtesy_line, :from => "CourtesyLine", :required => false

      xml_accessor :original_resource_release_date, :from => "OriginalResourceReleaseDate", :required => false

      xml_accessor :fulfillment_date, :from => "FulfillmentDate", :required => false

      
      xml_accessor :genres, :as => [], :from => "Genre", :required => false

      
      xml_accessor :parental_warning_types, :as => [], :from => "ParentalWarningType", :required => false

      
      xml_accessor :technical_sheet_music_details, :as => [], :from => "TechnicalSheetMusicDetails", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
