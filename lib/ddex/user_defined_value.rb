module DDEX
  module UserDefinedValue
    def self.included(klass)
      klass.instance_eval do 
        xml_accessor :namespace, :from => :attr
        xml_accessor :user_defined_value, :from => :attr
      end
    end
  end  
end
