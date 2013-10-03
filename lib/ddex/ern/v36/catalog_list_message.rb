require "roxml"
require "ddex/element"

require "ddex/ern/v36/catalog_item"
require "ddex/ern/v36/message_header"

module DDEX module ERN module V36

class CatalogListMessage < Element
  include ROXML

      
    
  
  xml_name "CatalogListMessage"

      xml_accessor :message_header, :as => DDEX::ERN::V36::MessageHeader, :from => "MessageHeader", :required => true

      xml_accessor :publication_date, :as => DateTime, :from => "PublicationDate", :required => true

      
      xml_accessor :catalog_items, :as => [DDEX::ERN::V36::CatalogItem], :from => "CatalogItem", :required => true



  
      xml_accessor :message_schema_version_id, :from => "@MessageSchemaVersionId", :required => true
    
  
      xml_accessor :business_profile_version_id, :from => "@BusinessProfileVersionId", :required => false
    
  
      xml_accessor :release_profile_version_id, :from => "@ReleaseProfileVersionId", :required => false
    
  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
