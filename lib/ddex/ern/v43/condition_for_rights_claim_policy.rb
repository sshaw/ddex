#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v43/segment"
require "ddex/ern/v43/service_exception"

module DDEX module ERN module V43  # :nodoc: all

class DDEX::ERN::V43::ConditionForRightsClaimPolicy < Element
  include ROXML


  xml_name "ConditionForRightsClaimPolicy"

      xml_accessor :value, :as => Float, :from => "Value", :required => true
      xml_accessor :unit, :from => "Unit", :required => true
      xml_accessor :reference_creation, :from => "ReferenceCreation", :required => false
      xml_accessor :relational_relator, :from => "RelationalRelator", :required => true
      xml_accessor :measurement_type, :from => "MeasurementType", :required => false
      xml_accessor :segments, :as => [DDEX::ERN::V43::Segment], :from => "Segment", :required => false
      xml_accessor :service_exceptions, :as => [DDEX::ERN::V43::ServiceException], :from => "ServiceException", :required => false


  

end

end end end
