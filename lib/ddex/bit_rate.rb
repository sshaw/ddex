module DDEX
  class BitRate < SimpleElement
    xml_accessor :unit_of_measure, :from => :attr
    
    # def to_s
    #   "#{value}#{unit_of_measure}"
    # end
  end
end
