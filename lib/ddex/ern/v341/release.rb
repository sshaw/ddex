require "roxml"
require "ddex/element"

require "ddex/ern/v341/release_details_by_territory"
require "ddex/v20120404/ddexc/c_line"
require "ddex/v20120404/ddexc/external_resource_link"
require "ddex/v20120404/ddexc/p_line"
require "ddex/v20120404/ddexc/reference_title"
require "ddex/v20120404/ddexc/release_collection_reference_list"
require "ddex/v20120404/ddexc/release_id"
require "ddex/v20120404/ddexc/release_resource_reference_list"
require "ddex/v20120404/ddexc/release_type"
require "ddex/v20120404/ddexc/resource_omission_reason"
require "ddex/v20120404/ddexc/rights_agreement_id"
require "ddex/v20120404/ddexc/sales_reporting_proxy_release_id"
require "ddex/v20120404/ddexc/web_page"

module DDEX module ERN module V341

class Release < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "Release"

      
      xml_accessor :release_ids, :as => [], :from => "ReleaseId", :required => true

      
      xml_accessor :release_references, :as => [], :from => "ReleaseReference", :required => false

      
      xml_accessor :external_resource_links, :as => [], :from => "ExternalResourceLink", :required => false

      
      xml_accessor :sales_reporting_proxy_release_ids, :as => [], :from => "SalesReportingProxyReleaseId", :required => false

      xml_accessor :reference_title, :from => "ReferenceTitle", :required => true

      xml_accessor :resource_omission_reason, :from => "ResourceOmissionReason", :required => false

      xml_accessor :release_resource_reference_list, :from => "ReleaseResourceReferenceList", :required => false

      xml_accessor :release_collection_reference_list, :from => "ReleaseCollectionReferenceList", :required => false

      
      xml_accessor :release_types, :as => [], :from => "ReleaseType", :required => false

      
      xml_accessor :release_details_by_territories, :as => [], :from => "ReleaseDetailsByTerritory", :required => true

      xml_accessor :duration, :from => "Duration", :required => false

      xml_accessor :rights_agreement_id, :from => "RightsAgreementId", :required => false

      
      xml_accessor :p_lines, :as => [], :from => "PLine", :required => false

      
      xml_accessor :c_lines, :as => [], :from => "CLine", :required => false

      
      xml_accessor :artist_profile_pages, :as => [], :from => "ArtistProfilePage", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
