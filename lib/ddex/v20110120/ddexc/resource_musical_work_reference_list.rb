#
# Auto-generated by jaxb2ruby v0.0.1 on 2016-07-11 13:50:27 +0100
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/v20110120/ddexc/resource_musical_work_reference"

module DDEX module V20110120 module DDEXC  # :nodoc: all

class DDEX::V20110120::DDEXC::ResourceMusicalWorkReferenceList < Element
  include ROXML


  xml_name "ResourceMusicalWorkReferenceList"

      xml_accessor :resource_musical_work_references, :as => [DDEX::V20110120::DDEXC::ResourceMusicalWorkReference], :from => "ResourceMusicalWorkReference", :required => true


  

end

end end end
