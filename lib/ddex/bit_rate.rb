module DDEX
  class BitRate < Element
    xml_accessor :unit_of_measure, :from => "./@UnitOfMeasure"
    xml_accessor :rate, :from => "node()", :as => Float

    def to_s
      "#{rate}#{unit_of_measure}"
    end

    def to_xml(options = {})
      node = options[:name]
      %|<#{node} UnitOfMeasure="#{unit_of_measure}">#{rate}</#{node}>|
    end
  end
end
