#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v33/collection_work_reference"

module DDEX module ERN module V33  # :nodoc: all

class CollectionWorkReferenceList < Element
  include ROXML


  xml_name "CollectionWorkReferenceList"

      xml_accessor :collection_work_references, :as => [DDEX::ERN::V33::CollectionWorkReference], :from => "CollectionWorkReference", :required => true


  

end

end end end
