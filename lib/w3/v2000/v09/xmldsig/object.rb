#
# Auto-generated by jaxb2ruby v0.0.1 on 2016-07-11 13:50:27 +0100
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"


module W3 module V2000 module V09 module XMLDsig  # :nodoc: all

class Object < DDEX::Element
  include ROXML

    setns "xmldsig", "http://www.w3.org/2000/09/xmldsig#"

  xml_name "Object"

      xml_accessor :contents, :as => [], :from => "content", :required => false

    xml_accessor :value, :from => ".", :required => false

  
      xml_accessor :id, :from => "@Id", :required => false
    
  
      xml_accessor :mime_type, :from => "@MimeType", :required => false
    
  
      xml_accessor :encoding, :from => "@Encoding", :required => false
    
  

end

end end end end
