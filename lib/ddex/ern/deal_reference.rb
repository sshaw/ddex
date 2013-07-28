module DDEX
  module ERN
    class DealReference < Element
      include Language
      xml_accessor :text => "."

      def to_s
        text.to_s
      end
    end
  end
end
