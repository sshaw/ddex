require "roxml"
require "ddex/element"


module DDEX module ERN module V36

class PhysicalReturns < Element
  include ROXML

      
    
  
  xml_name "PhysicalReturns"

      xml_accessor :physical_returns_allowed, :from => "PhysicalReturnsAllowed", :required => false

      xml_accessor :latest_date_for_physical_returns, :as => DateTime, :from => "LatestDateForPhysicalReturns", :required => false



  
end

end end end
