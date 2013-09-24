require "roxml"
require "ddex/content_element"


module DDEX module ERN module V36

class ConsumerRentalPeriod < ContentElement
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "ConsumerRentalPeriod"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :extensible?, :from => "@IsExtensible", :required => false
    
  
end

end end end
