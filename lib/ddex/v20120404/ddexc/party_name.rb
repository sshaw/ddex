require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/name"
require "ddex/v20120404/ddexc/name"
require "ddex/v20120404/ddexc/name"
require "ddex/v20120404/ddexc/name"
require "ddex/v20120404/ddexc/name"
require "ddex/v20120404/ddexc/name"

module DDEX module V20120404 module DDEXC

class PartyName < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "PartyName"

      xml_accessor :full_name, :from => "FullName", :required => true

      xml_accessor :full_name_ascii_transcribed, :from => "FullNameAsciiTranscribed", :required => false

      xml_accessor :full_name_indexed, :from => "FullNameIndexed", :required => false

      xml_accessor :names_before_key_name, :from => "NamesBeforeKeyName", :required => false

      xml_accessor :key_name, :from => "KeyName", :required => false

      xml_accessor :names_after_key_name, :from => "NamesAfterKeyName", :required => false

      xml_accessor :abbreviated_name, :from => "AbbreviatedName", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
