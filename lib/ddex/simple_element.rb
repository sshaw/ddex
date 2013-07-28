module DDEX
  class SimpleElement < Element
    xml_accessor :value, :from => "."
  end
end
