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

require "ddex/ern/v371/collection_work_reference"

module DDEX module ERN module V371  # :nodoc: all

class CollectionWorkReferenceList < Element
  include ROXML


  xml_name "CollectionWorkReferenceList"

      xml_accessor :collection_work_references, :as => [CollectionWorkReference], :from => "CollectionWorkReference", :required => true


  

end

end end end
