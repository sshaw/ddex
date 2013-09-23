require "roxml"
require "ddex/element"

require "ddex/ern/v341/software_details_by_territory"
require "ddex/v20120404/ddexc/event_date"
require "ddex/v20120404/ddexc/musical_work_id"
require "ddex/v20120404/ddexc/resource_contained_resource_reference_list"
require "ddex/v20120404/ddexc/resource_musical_work_reference_list"
require "ddex/v20120404/ddexc/software_id"
require "ddex/v20120404/ddexc/software_type"
require "ddex/v20120404/ddexc/title"

module DDEX module ERN module V341

class Software < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "Software"

      xml_accessor :software_type, :from => "SoftwareType", :required => false

      xml_accessor :artist_related?, :from => "IsArtistRelated", :required => false

      
      xml_accessor :software_ids, :as => [], :from => "SoftwareId", :required => true

      
      xml_accessor :indirect_software_ids, :as => [], :from => "IndirectSoftwareId", :required => false

      xml_accessor :resource_reference, :from => "ResourceReference", :required => true

      xml_accessor :resource_musical_work_reference_list, :from => "ResourceMusicalWorkReferenceList", :required => false

      xml_accessor :resource_contained_resource_reference_list, :from => "ResourceContainedResourceReferenceList", :required => false

      
      xml_accessor :titles, :as => [], :from => "Title", :required => false

      xml_accessor :creation_date, :from => "CreationDate", :required => false

      
      xml_accessor :software_details_by_territories, :as => [], :from => "SoftwareDetailsByTerritory", :required => true



  
      xml_accessor :updated?, :from => "@IsUpdated" 
    
  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
