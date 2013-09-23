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

      
      xml_accessor :musical_work_ids, :as => [], :from => "MusicalWorkId", :required => true

      xml_accessor :musical_work_reference, :from => "MusicalWorkReference", :required => true

      
      xml_accessor :reference_titles, :as => [], :from => "ReferenceTitle", :required => true

      xml_accessor :rights_agreement_id, :from => "RightsAgreementId", :required => false

      
      xml_accessor :musical_work_contributors, :as => [], :from => "MusicalWorkContributor", :required => true

      
      xml_accessor :musical_work_types, :as => [], :from => "MusicalWorkType", :required => false

      
      xml_accessor :right_shares, :as => [], :from => "RightShare", :required => false

      
      xml_accessor :musical_work_details_by_territories, :as => [], :from => "MusicalWorkDetailsByTerritory", :required => false



  
      xml_accessor :updated?, :from => "@IsUpdated" 
    
  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
