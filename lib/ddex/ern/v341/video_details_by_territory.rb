require "roxml"
require "ddex/element"

require "ddex/ern/v341/technical_video_details"
require "ddex/v20120404/ddexc/artist"
require "ddex/v20120404/ddexc/av_rating"
require "ddex/v20120404/ddexc/c_line"
require "ddex/v20120404/ddexc/character"
require "ddex/v20120404/ddexc/comment"
require "ddex/v20120404/ddexc/courtesy_line"
require "ddex/v20120404/ddexc/event_date"
require "ddex/v20120404/ddexc/event_date"
require "ddex/v20120404/ddexc/fulfillment_date"
require "ddex/v20120404/ddexc/genre"
require "ddex/v20120404/ddexc/host_sound_carrier"
require "ddex/v20120404/ddexc/indirect_resource_contributor"
require "ddex/v20120404/ddexc/keywords"
require "ddex/v20120404/ddexc/label_name"
require "ddex/v20120404/ddexc/p_line"
require "ddex/v20120404/ddexc/parental_warning_type"
require "ddex/v20120404/ddexc/resource_contributor"
require "ddex/v20120404/ddexc/rights_agreement_id"
require "ddex/v20120404/ddexc/rights_controller"
require "ddex/v20120404/ddexc/synopsis"
require "ddex/v20120404/ddexc/title"

module DDEX module ERN module V341

class VideoDetailsByTerritory < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
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

      xml_accessor :courtesy_line, :from => "CourtesyLine", :required => false

      xml_accessor :sequence_number, :from => "SequenceNumber", :required => false

      
      xml_accessor :host_sound_carriers, :as => [], :from => "HostSoundCarrier", :required => false

      xml_accessor :marketing_comment, :from => "MarketingComment", :required => false

      
      xml_accessor :genres, :as => [], :from => "Genre", :required => false

      
      xml_accessor :parental_warning_types, :as => [], :from => "ParentalWarningType", :required => false

      
      xml_accessor :av_ratings, :as => [], :from => "AvRating", :required => false

      xml_accessor :fulfillment_date, :from => "FulfillmentDate", :required => false

      
      xml_accessor :keywords, :as => [], :from => "Keywords", :required => false

      xml_accessor :synopsis, :from => "Synopsis", :required => false

      
      xml_accessor :c_lines, :as => [], :from => "CLine", :required => false

      
      xml_accessor :technical_video_details, :as => [], :from => "TechnicalVideoDetails", :required => false

      
      xml_accessor :characters, :as => [], :from => "Character", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
