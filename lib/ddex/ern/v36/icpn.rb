require "roxml"
require "ddex/content_element"


module DDEX module ERN module V36

class ICPN < ContentElement
  include ROXML

      
    
  
  xml_name "ICPN"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :ean?, :from => "@IsEan", :required => true
    
  
end

end end end
