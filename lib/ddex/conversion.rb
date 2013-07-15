require "coercible"

module DDEX
  module Conversion

    class << self
      def to_datetime(v)
        DATETIME[v]
      end

      def to_boolean(v)
        BOOLEAN[v]
      end

      def typecast
        @typecast ||= Coercible::Coercer.new
      end

      private :typecast

      def convert(&block)
        lambda do |v|
          begin
            v ? block[v] : v
          rescue Coercible::UnsupportedCoercion
          end
        end
      end

      private :convert
    end

    DATETIME = convert do |v|
      typecast[String].to_datetime(v)
    end

    BOOLEAN = convert do |v|
      typecast[String].to_boolean(v)
    end
  end
end
