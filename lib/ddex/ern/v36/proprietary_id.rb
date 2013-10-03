require "roxml"
require "ddex/content_element"


module DDEX module ERN module V36

class ProprietaryId < ContentElement
  include ROXML

      
    
  
  xml_name "ProprietaryId"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :namespace, :from => "@Namespace", :required => true
    
  
end

end end end
