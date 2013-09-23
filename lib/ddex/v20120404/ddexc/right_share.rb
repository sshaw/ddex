require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/carrier_type"
require "ddex/v20120404/ddexc/commercial_model_type"
require "ddex/v20120404/ddexc/distribution_channel_type"
require "ddex/v20120404/ddexc/period"
require "ddex/v20120404/ddexc/right_share_creation_reference_list"
require "ddex/v20120404/ddexc/rights_agreement_id"
require "ddex/v20120404/ddexc/rights_controller"
require "ddex/v20120404/ddexc/rights_type"
require "ddex/v20120404/ddexc/tariff_reference"
require "ddex/v20120404/ddexc/use_type"
require "ddex/v20120404/ddexc/user_interface_type"

module DDEX module V20120404 module DDEXC

class RightShare < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "RightShare"

      xml_accessor :right_share_id, :from => "RightShareId", :required => false

      xml_accessor :right_share_reference, :from => "RightShareReference", :required => true

      xml_accessor :right_share_creation_reference_list, :from => "RightShareCreationReferenceList", :required => false

      
      xml_accessor :excluded_territory_codes, :as => [], :from => "ExcludedTerritoryCode", :required => false

      
      xml_accessor :territory_codes, :as => [], :from => "TerritoryCode", :required => false

      
      xml_accessor :rights_types, :as => [], :from => "RightsType", :required => false

      
      xml_accessor :use_types, :as => [], :from => "UseType", :required => false

      
      xml_accessor :user_interface_types, :as => [], :from => "UserInterfaceType", :required => false

      
      xml_accessor :distribution_channel_types, :as => [], :from => "DistributionChannelType", :required => false

      
      xml_accessor :carrier_types, :as => [], :from => "CarrierType", :required => false

      
      xml_accessor :commercial_model_types, :as => [], :from => "CommercialModelType", :required => false

      
      xml_accessor :musical_work_rights_claim_types, :as => [], :from => "MusicalWorkRightsClaimType", :required => false

      
      xml_accessor :rights_controllers, :as => [], :from => "RightsController", :required => false

      xml_accessor :validity_period, :from => "ValidityPeriod", :required => true

      xml_accessor :percentage_rate, :from => "PercentageRate", :required => false

      xml_accessor :percentage_unknown, :from => "PercentageUnknown", :required => false

      xml_accessor :tariff_reference, :from => "TariffReference", :required => false

      xml_accessor :license_status, :from => "LicenseStatus", :required => false

      xml_accessor :has_first_license_refusal, :from => "HasFirstLicenseRefusal", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
