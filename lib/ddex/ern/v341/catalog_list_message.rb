require "roxml"
require "ddex/element"

require "ddex/ern/v341/catalog_item"
require "ddex/v20120404/ddexc/message_header"

module DDEX module ERN module V341

class CatalogListMessage < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "CatalogListMessage"

      xml_accessor :message_header, :from => "MessageHeader", :required => true

      xml_accessor :publication_date, :from => "PublicationDate", :required => true

      
      xml_accessor :catalog_items, :as => [], :from => "CatalogItem", :required => true



  
      xml_accessor :message_schema_version_id, :from => "@MessageSchemaVersionId" 
    
  
      xml_accessor :business_profile_version_id, :from => "@BusinessProfileVersionId" 
    
  
      xml_accessor :release_profile_version_id, :from => "@ReleaseProfileVersionId" 
    
  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
