#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v383/musical_work_contributor"
require "ddex/ern/v383/musical_work_details_by_territory"
require "ddex/ern/v383/musical_work_id"
require "ddex/ern/v383/musical_work_type"
require "ddex/ern/v383/reference_title"
require "ddex/ern/v383/right_share"
require "ddex/ern/v383/rights_agreement_id"

module DDEX module ERN module V383  # :nodoc: all

class DDEX::ERN::V383::MusicalWork < Element
  include ROXML


  xml_name "MusicalWork"

      xml_accessor :musical_work_ids, :as => [DDEX::ERN::V383::MusicalWorkId], :from => "MusicalWorkId", :required => true
      xml_accessor :musical_work_reference, :from => "MusicalWorkReference", :required => true
      xml_accessor :reference_titles, :as => [DDEX::ERN::V383::ReferenceTitle], :from => "ReferenceTitle", :required => true
      xml_accessor :rights_agreement_id, :as => DDEX::ERN::V383::RightsAgreementId, :from => "RightsAgreementId", :required => false
      xml_accessor :musical_work_contributors, :as => [DDEX::ERN::V383::MusicalWorkContributor], :from => "MusicalWorkContributor", :required => true
      xml_accessor :musical_work_types, :as => [DDEX::ERN::V383::MusicalWorkType], :from => "MusicalWorkType", :required => false
      xml_accessor :right_shares, :as => [DDEX::ERN::V383::RightShare], :from => "RightShare", :required => false
      xml_accessor :musical_work_details_by_territories, :as => [DDEX::ERN::V383::MusicalWorkDetailsByTerritory], :from => "MusicalWorkDetailsByTerritory", :required => false


  
      xml_accessor :updated?, :from => "@IsUpdated", :required => false
    
  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  

end

end end end
