module DDEX
  class ImageType < Element
    xml_accessor :value, :from => "."
    xml_accessor :namespace, :from => :attr
    xml_accessor :user_defined_value, :from => :attr

    def to_s
      value.to_s
    end
  end
end
