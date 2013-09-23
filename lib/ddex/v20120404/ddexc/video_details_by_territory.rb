require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/artist"
require "ddex/v20120404/ddexc/c_line"
require "ddex/v20120404/ddexc/event_date"
require "ddex/v20120404/ddexc/event_date"
require "ddex/v20120404/ddexc/indirect_resource_contributor"
require "ddex/v20120404/ddexc/label_name"
require "ddex/v20120404/ddexc/p_line"
require "ddex/v20120404/ddexc/resource_contributor"
require "ddex/v20120404/ddexc/rights_agreement_id"
require "ddex/v20120404/ddexc/rights_controller"
require "ddex/v20120404/ddexc/title"

module DDEX module V20120404 module DDEXC

class VideoDetailsByTerritory < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "VideoDetailsByTerritory"

      
      xml_accessor :excluded_territory_codes, :as => [], :from => "ExcludedTerritoryCode", :required => false

      
      xml_accessor :territory_codes, :as => [], :from => "TerritoryCode", :required => false

      
      xml_accessor :titles, :as => [], :from => "Title", :required => false

      
      xml_accessor :display_artists, :as => [], :from => "DisplayArtist", :required => false

      
      xml_accessor :resource_contributors, :as => [], :from => "ResourceContributor", :required => false

      
      xml_accessor :indirect_resource_contributors, :as => [], :from => "IndirectResourceContributor", :required => false

      xml_accessor :rights_agreement_id, :from => "RightsAgreementId", :required => false

      
      xml_accessor :label_names, :as => [], :from => "LabelName", :required => false

      
      xml_accessor :rights_controllers, :as => [], :from => "RightsController", :required => false

      xml_accessor :remastered_date, :from => "RemasteredDate", :required => false

      xml_accessor :original_resource_release_date, :from => "OriginalResourceReleaseDate", :required => false

      
      xml_accessor :p_lines, :as => [], :from => "PLine", :required => false

      
      xml_accessor :c_lines, :as => [], :from => "CLine", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
