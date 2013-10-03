require "roxml"
require "ddex/element"

require "ddex/ern/v36/hash_sum_algorithm_type"

module DDEX module ERN module V36

class HashSum < Element
  include ROXML

      
    
  
  xml_name "HashSum"

      xml_accessor :hash_sum, :from => "HashSum", :required => true

      xml_accessor :hash_sum_algorithm_type, :as => DDEX::ERN::V36::HashSumAlgorithmType, :from => "HashSumAlgorithmType", :required => true



  
end

end end end
