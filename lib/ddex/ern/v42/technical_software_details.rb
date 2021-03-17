#
# Auto-generated by jaxb2ruby v0.0.1 on 2020-12-03 10:00:56 -0500
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v42/file"
require "ddex/ern/v42/fingerprint"
require "ddex/ern/v42/operating_system_type"
require "ddex/ern/v42/preview_details"

module DDEX module ERN module V42  # :nodoc: all

class DDEX::ERN::V42::TechnicalSoftwareDetails < Element
  include ROXML


  xml_name "TechnicalSoftwareDetails"

      xml_accessor :technical_resource_details_reference, :from => "TechnicalResourceDetailsReference", :required => true
      xml_accessor :operating_system_type, :as => DDEX::ERN::V42::OperatingSystemType, :from => "OperatingSystemType", :required => false
      xml_accessor :bit_depth, :as => Integer, :from => "BitDepth", :required => false
      xml_accessor :preview?, :from => "IsPreview", :required => false
      xml_accessor :preview_details, :as => DDEX::ERN::V42::PreviewDetails, :from => "PreviewDetails", :required => false
      xml_accessor :file, :as => DDEX::ERN::V42::File, :from => "File", :required => false
      xml_accessor :provided_in_delivery?, :from => "IsProvidedInDelivery", :required => false
      xml_accessor :fingerprints, :as => [DDEX::ERN::V42::Fingerprint], :from => "Fingerprint", :required => false


  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
      xml_accessor :applicable_territory_code, :from => "@ApplicableTerritoryCode", :required => false
    
  
      xml_accessor :default?, :from => "@IsDefault", :required => false
    
  

end

end end end
