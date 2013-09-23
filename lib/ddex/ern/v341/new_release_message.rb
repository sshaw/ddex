require "roxml"
require "ddex/element"

require "ddex/ern/v341/catalog_transfer"
require "ddex/ern/v341/collection_list"
require "ddex/ern/v341/cue_sheet_list"
require "ddex/ern/v341/deal_list"
require "ddex/ern/v341/release_list"
require "ddex/ern/v341/resource_list"
require "ddex/v20120404/ddexc/message_header"
require "ddex/v20120404/ddexc/work_list"

module DDEX module ERN module V341

class NewReleaseMessage < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "NewReleaseMessage"

      xml_accessor :message_header, :from => "MessageHeader", :required => true

      xml_accessor :update_indicator, :from => "UpdateIndicator", :required => true

      xml_accessor :catalog_transfer, :from => "CatalogTransfer", :required => false

      xml_accessor :work_list, :from => "WorkList", :required => false

      xml_accessor :cue_sheet_list, :from => "CueSheetList", :required => false

      xml_accessor :resource_list, :from => "ResourceList", :required => true

      xml_accessor :collection_list, :from => "CollectionList", :required => false

      xml_accessor :release_list, :from => "ReleaseList", :required => true

      xml_accessor :deal_list, :from => "DealList", :required => false



  
      xml_accessor :message_schema_version_id, :from => "@MessageSchemaVersionId" 
    
  
      xml_accessor :business_profile_version_id, :from => "@BusinessProfileVersionId" 
    
  
      xml_accessor :release_profile_version_id, :from => "@ReleaseProfileVersionId" 
    
  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
