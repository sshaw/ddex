require "ddex/user_defined_value"

module DDEX
  class RatingAgency < SimpleElement
    include UserDefinedValue
  end

  class AvRating < Element
    xml_accessor :rating_text
    xml_accessor :rating_agency, :as => RatingAgency
  end
end
