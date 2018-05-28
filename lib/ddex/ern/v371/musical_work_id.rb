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

require "ddex/ern/v371/proprietary_id"

module DDEX module ERN module V371  # :nodoc: all

class MusicalWorkId < Element
  include ROXML


  xml_name "ns1:MusicalWorkId"

      xml_accessor :iswc, :from => "ISWC", :required => false
      xml_accessor :opus_number, :from => "OpusNumber", :required => false
      xml_accessor :composer_catalog_numbers, :as => [], :from => "ComposerCatalogNumber", :required => false
      xml_accessor :proprietary_ids, :as => [ProprietaryId], :from => "ProprietaryId", :required => false


  
      xml_accessor :replaced?, :from => "@IsReplaced", :required => false
    
  

end

end end end
