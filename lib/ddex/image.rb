require "ddex/resource"

module DDEX
  class Image < Resource
    xml_name "Image"
    xml_accessor :type, :from => "ImageType"
  end  
end

