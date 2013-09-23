require "roxml"
require "ddex/content_element"


module DDEX module V20120404 module DDEXC

class NumberOfDataMismatchItems < ContentElement
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "NumberOfDataMismatchItems"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :data_mismatch_status, :from => "@DataMismatchStatus" 
    
  
end

end end end
