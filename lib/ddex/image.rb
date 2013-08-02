require "ddex/event_date"
require "ddex/image_id"
require "ddex/image_type"
require "ddex/image_details_by_territory"
require "ddex/language"
require "ddex/resource"
require "ddex/title"

module DDEX
  class Image < Element
    include Resource

    xml_accessor :artist_related?, :from => "@IsArtistRelated"

    xml_accessor :image_details_by_territory, :as => [ImageDetailsByTerritory]
    #alias :details :image_details_by_territory

    xml_accessor :creation_dates, :as => [EventDate]
    xml_accessor :image_ids, :as => [ImageId]
    xml_accessor :titles, :as => [Title]
    
    xml_accessor :image_type, :as => ImageType
    #alias :type :image_type
    
    # value could be a hash or ImageType
    # def type=(value)
    #   @type = ImageType.new(:value => value)
    # end
  end
end
