#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v383/proprietary_id"

module DDEX module ERN module V383  # :nodoc: all

class DDEX::ERN::V383::SheetMusicId < Element
  include ROXML


  xml_name "SheetMusicId"

      xml_accessor :ismn, :from => "ISMN", :required => false
      xml_accessor :proprietary_ids, :as => [DDEX::ERN::V383::ProprietaryId], :from => "ProprietaryId", :required => false


  
      xml_accessor :replaced?, :from => "@IsReplaced", :required => false
    
  

end

end end end
