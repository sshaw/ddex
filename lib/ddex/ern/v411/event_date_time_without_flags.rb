#
# Auto-generated by jaxb2ruby v0.0.1 on 2020-12-01 19:23:19 -0500
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"


module DDEX module ERN module V411  # :nodoc: all

class DDEX::ERN::V411::EventDateTimeWithoutFlags < Element
  include ROXML


  xml_name "EventDateTimeWithoutFlags"


    xml_accessor :value, :from => ".", :required => false

  
      xml_accessor :approximate?, :from => "@IsApproximate", :required => false
    
  
      xml_accessor :applicable_territory_code, :from => "@ApplicableTerritoryCode", :required => false
    
  
      xml_accessor :location_description, :from => "@LocationDescription", :required => false
    
  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  

end

end end end
