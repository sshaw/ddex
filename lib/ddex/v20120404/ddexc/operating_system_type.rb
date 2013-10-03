require "roxml"
require "ddex/content_element"


module DDEX module V20120404 module DDEXC

class OperatingSystemType < ContentElement
  include ROXML

      
    
  
  xml_name "OperatingSystemType"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :version, :from => "@Version", :required => false
    
  
      xml_accessor :namespace, :from => "@Namespace", :required => false
    
  
      xml_accessor :user_defined_value, :from => "@UserDefinedValue", :required => false
    
  
end

end end end
