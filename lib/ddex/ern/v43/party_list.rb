#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v43/party"

module DDEX module ERN module V43  # :nodoc: all

class DDEX::ERN::V43::PartyList < Element
  include ROXML


  xml_name "PartyList"

      xml_accessor :parties, :as => [DDEX::ERN::V43::Party], :from => "Party", :required => true


  

end

end end end
