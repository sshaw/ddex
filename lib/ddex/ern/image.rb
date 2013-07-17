module DDEX
  module ERN
    class Image < DDEX::Image
      xml_accessor :updated?, :from => "@IsUpdated"
    end
  end
end
