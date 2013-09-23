require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/musical_work_contributor"
require "ddex/v20120404/ddexc/musical_work_details_by_territory"
require "ddex/v20120404/ddexc/musical_work_id"
require "ddex/v20120404/ddexc/musical_work_type"
require "ddex/v20120404/ddexc/reference_title"
require "ddex/v20120404/ddexc/right_share"
require "ddex/v20120404/ddexc/rights_agreement_id"

module DDEX module V20120404 module DDEXC

class MusicalWork < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "MusicalWork"

      
      xml_accessor :musical_work_ids, :as => [DDEX::V20120404::DDEXC::MusicalWorkId], :from => "MusicalWorkId", :required => true

      xml_accessor :musical_work_reference, :from => "MusicalWorkReference", :required => true

      
      xml_accessor :reference_titles, :as => [DDEX::V20120404::DDEXC::ReferenceTitle], :from => "ReferenceTitle", :required => true

      xml_accessor :rights_agreement_id, :as => DDEX::V20120404::DDEXC::RightsAgreementId, :from => "RightsAgreementId", :required => false

      
      xml_accessor :musical_work_contributors, :as => [DDEX::V20120404::DDEXC::MusicalWorkContributor], :from => "MusicalWorkContributor", :required => true

      
      xml_accessor :musical_work_types, :as => [DDEX::V20120404::DDEXC::MusicalWorkType], :from => "MusicalWorkType", :required => false

      
      xml_accessor :right_shares, :as => [DDEX::V20120404::DDEXC::RightShare], :from => "RightShare", :required => false

      
      xml_accessor :musical_work_details_by_territories, :as => [DDEX::V20120404::DDEXC::MusicalWorkDetailsByTerritory], :from => "MusicalWorkDetailsByTerritory", :required => false



  
      xml_accessor :updated?, :from => "@IsUpdated", :required => false
    
  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
