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

require "ddex/ern/v411/display_sub_title"

module DDEX module ERN module V411  # :nodoc: all

class DDEX::ERN::V411::DisplayTitle < Element
  include ROXML


  xml_name "DisplayTitle"

      xml_accessor :title_text, :from => "TitleText", :required => true
      xml_accessor :sub_titles, :as => [DDEX::ERN::V411::DisplaySubTitle], :from => "SubTitle", :required => false


  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
      xml_accessor :applicable_territory_code, :from => "@ApplicableTerritoryCode", :required => false
    
  
      xml_accessor :default?, :from => "@IsDefault", :required => false
    
  

end

end end end
