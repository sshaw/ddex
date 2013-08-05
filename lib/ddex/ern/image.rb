module DDEX
  module ERN
    # Not a derrived type in the XSD
    class Image < DDEX::Image
      xml_accessor :updated?, :from => "@IsUpdated"
    end
  end
end
