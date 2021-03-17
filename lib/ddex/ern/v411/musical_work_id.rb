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

require "ddex/ern/v411/proprietary_id"

module DDEX module ERN module V411  # :nodoc: all

class DDEX::ERN::V411::MusicalWorkId < Element
  include ROXML


  xml_name "MusicalWorkId"

      xml_accessor :iswc, :from => "ISWC", :required => false
      xml_accessor :opus_number, :from => "OpusNumber", :required => false
      xml_accessor :composer_catalog_numbers, :as => [], :from => "ComposerCatalogNumber", :required => false
      xml_accessor :proprietary_ids, :as => [DDEX::ERN::V411::ProprietaryId], :from => "ProprietaryId", :required => false


  
      xml_accessor :replaced?, :from => "@IsReplaced", :required => false
    
  

end

end end end
