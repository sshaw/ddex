#
# Auto-generated by jaxb2ruby v0.0.1 on 2020-12-03 10:00:55 -0500
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v42/hash_sum_algorithm_type"

module DDEX module ERN module V42  # :nodoc: all

class DDEX::ERN::V42::DetailedHashSum < Element
  include ROXML


  xml_name "DetailedHashSum"

      xml_accessor :algorithm, :as => DDEX::ERN::V42::HashSumAlgorithmType, :from => "Algorithm", :required => true
      xml_accessor :version, :from => "Version", :required => false
      xml_accessor :parameter, :from => "Parameter", :required => false
      xml_accessor :data_type, :from => "DataType", :required => false
      xml_accessor :hash_sum_value, :from => "HashSumValue", :required => true


  

end

end end end
