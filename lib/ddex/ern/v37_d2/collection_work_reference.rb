#
# Auto-generated by jaxb2ruby v0.0.1 on 2018-03-01 07:54:48 +0000
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"


module DDEX module ERN module V37D2  # :nodoc: all

class CollectionWorkReference < Element
  include ROXML


  xml_name "CollectionWorkReference"

      xml_accessor :collection_work_reference, :from => "CollectionWorkReference", :required => true
      xml_accessor :duration, :from => "Duration", :required => false


  

end

end end end
