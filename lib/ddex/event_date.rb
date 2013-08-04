require "ddex/language"

module DDEX
  class EventDate < Element
    include Language

    %w[Approximate Before After].each do |attr|
      xml_accessor "#{attr.underscore}?", :from => "@Is#{attr}"
    end

    xml_accessor :location_description, :from => :attr
    xml_accessor :territory, :from => "@TerritoryCode"

    # The "problem" with this is that xsd:date -even though there's no time component- supports
    # a TZ offset. Not sure I've ever seen this in the wild so we'll try using Date
    xml_accessor :value, :from => ".", :as => Date
  end
end
