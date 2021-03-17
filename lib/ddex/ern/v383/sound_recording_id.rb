#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v383/catalog_number"
require "ddex/ern/v383/proprietary_id"

module DDEX module ERN module V383  # :nodoc: all

class DDEX::ERN::V383::SoundRecordingId < Element
  include ROXML


  xml_name "SoundRecordingId"

      xml_accessor :isrc, :from => "ISRC", :required => false
      xml_accessor :catalog_number, :as => DDEX::ERN::V383::CatalogNumber, :from => "CatalogNumber", :required => false
      xml_accessor :proprietary_ids, :as => [DDEX::ERN::V383::ProprietaryId], :from => "ProprietaryId", :required => false


  
      xml_accessor :replaced?, :from => "@IsReplaced", :required => false
    
  

end

end end end
