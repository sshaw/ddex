#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v383/name"

module DDEX module ERN module V383  # :nodoc: all

class DDEX::ERN::V383::PartyName < Element
  include ROXML


  xml_name "PartyName"

      xml_accessor :full_name, :as => DDEX::ERN::V383::Name, :from => "FullName", :required => true
      xml_accessor :full_name_ascii_transcribed, :from => "FullNameAsciiTranscribed", :required => false
      xml_accessor :full_name_indexed, :as => DDEX::ERN::V383::Name, :from => "FullNameIndexed", :required => false
      xml_accessor :names_before_key_name, :as => DDEX::ERN::V383::Name, :from => "NamesBeforeKeyName", :required => false
      xml_accessor :key_name, :as => DDEX::ERN::V383::Name, :from => "KeyName", :required => false
      xml_accessor :names_after_key_name, :as => DDEX::ERN::V383::Name, :from => "NamesAfterKeyName", :required => false
      xml_accessor :abbreviated_name, :as => DDEX::ERN::V383::Name, :from => "AbbreviatedName", :required => false


  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  

end

end end end
