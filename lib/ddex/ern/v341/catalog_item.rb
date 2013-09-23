require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/c_line"
require "ddex/v20120404/ddexc/event_date"
require "ddex/v20120404/ddexc/genre"
require "ddex/v20120404/ddexc/label_name"
require "ddex/v20120404/ddexc/name"
require "ddex/v20120404/ddexc/name"
require "ddex/v20120404/ddexc/p_line"
require "ddex/v20120404/ddexc/reference_title"
require "ddex/v20120404/ddexc/release_id"
require "ddex/v20120404/ddexc/title"

module DDEX module ERN module V341

class CatalogItem < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "CatalogItem"

      
      xml_accessor :territory_codes, :as => [], :from => "TerritoryCode", :required => true

      
      xml_accessor :release_ids, :as => [], :from => "ReleaseId", :required => true

      xml_accessor :title, :from => "Title", :required => true

      xml_accessor :display_artist_name, :from => "DisplayArtistName", :required => true

      
      xml_accessor :contributor_names, :as => [], :from => "ContributorName", :required => true

      xml_accessor :display_title, :from => "DisplayTitle", :required => true

      
      xml_accessor :label_names, :as => [], :from => "LabelName", :required => true

      
      xml_accessor :genres, :as => [], :from => "Genre", :required => false

      
      xml_accessor :p_lines, :as => [], :from => "PLine", :required => false

      
      xml_accessor :c_lines, :as => [], :from => "CLine", :required => false

      xml_accessor :release_date, :from => "ReleaseDate", :required => true



  
end

end end end
