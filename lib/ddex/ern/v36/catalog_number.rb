require "roxml"
require "ddex/content_element"


module DDEX module ERN module V36

class CatalogNumber < ContentElement
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "CatalogNumber"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :namespace, :from => "@Namespace", :required => true
    
  
end

end end end
