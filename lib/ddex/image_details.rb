require "ddex/resource"

module DDEX
  # ERN Version too
  class ImageDetails < Element
    xml_name "ImageDetailsByTerritory"

    xml_accessor :territory, :from => "TerritoryCode"
  end  
end
