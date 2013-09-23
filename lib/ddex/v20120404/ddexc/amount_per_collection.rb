require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/collection_type"

module DDEX module V20120404 module DDEXC

class AmountPerCollection < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "AmountPerCollection"

      xml_accessor :amount, :from => "Amount", :required => true

      xml_accessor :collection_type, :from => "CollectionType", :required => true



  
end

end end end
