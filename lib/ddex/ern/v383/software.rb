#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v383/event_date"
require "ddex/ern/v383/musical_work_id"
require "ddex/ern/v383/resource_contained_resource_reference_list"
require "ddex/ern/v383/resource_musical_work_reference_list"
require "ddex/ern/v383/resource_proprietary_id"
require "ddex/ern/v383/software_details_by_territory"
require "ddex/ern/v383/software_type"
require "ddex/ern/v383/title"

module DDEX module ERN module V383  # :nodoc: all

class DDEX::ERN::V383::Software < Element
  include ROXML


  xml_name "Software"

      xml_accessor :software_type, :as => DDEX::ERN::V383::SoftwareType, :from => "SoftwareType", :required => false
      xml_accessor :artist_related?, :from => "IsArtistRelated", :required => false
      xml_accessor :software_ids, :as => [DDEX::ERN::V383::ResourceProprietaryId], :from => "SoftwareId", :required => true
      xml_accessor :indirect_software_ids, :as => [DDEX::ERN::V383::MusicalWorkId], :from => "IndirectSoftwareId", :required => false
      xml_accessor :resource_reference, :from => "ResourceReference", :required => true
      xml_accessor :resource_musical_work_reference_list, :as => DDEX::ERN::V383::ResourceMusicalWorkReferenceList, :from => "ResourceMusicalWorkReferenceList", :required => false
      xml_accessor :resource_contained_resource_reference_list, :as => DDEX::ERN::V383::ResourceContainedResourceReferenceList, :from => "ResourceContainedResourceReferenceList", :required => false
      xml_accessor :titles, :as => [DDEX::ERN::V383::Title], :from => "Title", :required => false
      xml_accessor :creation_date, :as => DDEX::ERN::V383::EventDate, :from => "CreationDate", :required => false
      xml_accessor :software_details_by_territories, :as => [DDEX::ERN::V383::SoftwareDetailsByTerritory], :from => "SoftwareDetailsByTerritory", :required => true


  
      xml_accessor :updated?, :from => "@IsUpdated", :required => false
    
  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  

end

end end end
