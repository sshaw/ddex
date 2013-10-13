require "roxml"
require "ddex/element"


module DDEX module V20120404 module DDEXC

class NumberOfDataMismatchItems < Element
  include ROXML

      
    
  
  xml_name "NumberOfDataMismatchItems"


    xml_accessor :value, :from => ".", :required => false
    

  
      xml_accessor :data_mismatch_status, :from => "@DataMismatchStatus", :required => false
    
  
end

end end end
