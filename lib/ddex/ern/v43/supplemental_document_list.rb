#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v43/file"

module DDEX module ERN module V43  # :nodoc: all

class DDEX::ERN::V43::SupplementalDocumentList < Element
  include ROXML


  xml_name "SupplementalDocumentList"

      xml_accessor :supplemental_documents, :as => [DDEX::ERN::V43::File], :from => "SupplementalDocument", :required => true


  

end

end end end
