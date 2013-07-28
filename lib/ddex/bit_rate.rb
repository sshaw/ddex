module DDEX
  class BitRate < Element
    xml_accessor :unit_of_measure, :from => :attr
    xml_accessor :rate, :from => ".", :as => Float

    # def to_s
    #   "#{rate}#{unit_of_measure}"
    # end
  end
end
