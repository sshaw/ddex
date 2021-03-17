require "roxml"
require "ddex/element"


module DDEX module ERN module V41  # :nodoc: all

class DDEX::ERN::V41::NameUsedInDisplayCredit < Element
  include ROXML

  xml_name "NameUsedInDisplayCredit"
  xml_accessor :value, :from => ".", :required => false
end

end end end
