#
# Auto-generated by jaxb2ruby v0.0.1 on 2018-03-01 07:52:38 +0000
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v371/musical_work"

module DDEX module ERN module V371  # :nodoc: all

class WorkList < Element
  include ROXML


  xml_name "ns1:WorkList"

      xml_accessor :musical_works, :as => [MusicalWork], :from => "MusicalWork", :required => true


  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  

end

end end end
