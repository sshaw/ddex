require "roxml"
require "ddex/content_element"


module DDEX module V20120404 module DDEXC

class AppliedRoyaltyRate < ContentElement
  include ROXML

      
    
  
  xml_name "AppliedRoyaltyRate"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :value_type, :from => "@ValueType", :required => true
    
  
      xml_accessor :royalty_rate_type, :from => "@RoyaltyRateType", :required => true
    
  
      xml_accessor :namespace, :from => "@Namespace", :required => false
    
  
      xml_accessor :user_defined_value, :from => "@UserDefinedValue", :required => false
    
  
end

end end end
