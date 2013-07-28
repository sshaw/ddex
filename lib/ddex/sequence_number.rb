module DDEX
  module SequenceNumber
    def self.included(klass)
      klass.instance_eval do
        xml_accessor :sequence_number, :from => :attr, :as => Integer
      end
    end
  end
end
