require "ddex/image_type"
require "ddex/resource"
require "ddex/title"

module DDEX
  class Image < Resource
    xml_accessor :artist_related?, :from => "@IsArtistRelated"
    #xml_accessor :details, :from => "ImageDetailsByTerritory", :as => [ImageDetailsByTerritory]
    #xml_accessor :creation_date, :as => [EventDate]
    xml_accessor :language, :from => "@LanguageAndScriptCode"
    #xml_accessor :image_id, :as => [ImageId]
    xml_reader :title, :from => "Title", :as => Title
    xml_reader :type, :from => "ImageType", :as => ImageType

    def type=(value)
      @type = ImageType.new(:value => value)
    end
  end
end
