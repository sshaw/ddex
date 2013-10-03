require "roxml"
require "ddex/content_element"


module DDEX module ERN module V36

class AspectRatio < ContentElement
  include ROXML

      
    
  
  xml_name "AspectRatio"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :aspect_ratio_type, :from => "@AspectRatioType", :required => false
    
  
end

end end end
