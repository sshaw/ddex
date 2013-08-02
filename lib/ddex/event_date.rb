require "ddex/language"

module DDEX
  class EventDate < Element
    include Language

    %w[Approximate Before After].each do |attr|
      xml_accessor "#{attr.underscore}?", :from => "@Is#{attr}"
    end

    xml_accessor :location_description, :from => "@LocationDescription"
    xml_accessor :territory, :from => "@TerritoryCode"
    xml_accessor :value, :from => ".", :as => Time
  end
end
