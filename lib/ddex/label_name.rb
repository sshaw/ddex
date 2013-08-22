require "ddex/language"

module DDEX
  class LabelName < SimpleElement
    include Language
    
    xml_accessor :label_name_type, :from => :attr
    # alias_method :type, :label_name_type
  end
end
