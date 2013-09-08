module DDEX
  class ICPN < SimpleElement
    xml_name "ICPN"
    xml_accessor :ean?, :from => "@IsEan"
  end  
end
