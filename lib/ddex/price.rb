module DDEX
  class Price < Element
    xml_accessor :currency, :from => "@CurrencyCode"
    xml_accessor :value, :from => "."
  end
end
