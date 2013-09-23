require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/reference_title"
require "ddex/v20120404/ddexc/release_id"
require "ddex/v20120404/ddexc/release_summary_details_by_territory"
require "ddex/v20120404/ddexc/rights_agreement_id"

module DDEX module V20120404 module DDEXC

class ReleaseSummary < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "ReleaseSummary"

      
      xml_accessor :release_ids, :as => [], :from => "ReleaseId", :required => true

      xml_accessor :reference_title, :from => "ReferenceTitle", :required => true

      
      xml_accessor :release_summary_details_by_territories, :as => [], :from => "ReleaseSummaryDetailsByTerritory", :required => false

      xml_accessor :rights_agreement_id, :from => "RightsAgreementId", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
