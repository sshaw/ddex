#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v43/sub_genre_category_value"

module DDEX module ERN module V43  # :nodoc: all

class DDEX::ERN::V43::SubGenreCategory < Element
  include ROXML


  xml_name "SubGenreCategory"

      xml_accessor :values, :as => [DDEX::ERN::V43::SubGenreCategoryValue], :from => "Value", :required => true


  

end

end end end
