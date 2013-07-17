module DDEX
  class EventDate < Element
    %w[IsApproximate IsBefore IsAfter].each do |attr|
      xml_accessor "#{attr.underscore}?", :from => "@#{attr}"
    end

    xml_accessor :language, :from => "@Language"
    xml_accessor :location_description, :from => "@LocationDescription"
    xml_accessor :territory, :from => "@TerritoryCode"
  end
end
