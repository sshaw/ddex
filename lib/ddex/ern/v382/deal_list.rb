#
# Auto-generated by jaxb2ruby v0.0.1 on 2017-03-14 23:25:45 +0000
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v382/release_deal"

module DDEX module ERN module V382  # :nodoc: all

class DDEX::ERN::V382::DealList < Element
  include ROXML


  xml_name "DealList"

      xml_accessor :release_deals, :as => [DDEX::ERN::V382::ReleaseDeal], :from => "ReleaseDeal", :required => false



      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false



end

end end end
