#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v43/externally_linked_resource_type"
require "ddex/ern/v43/period_without_flags"

module DDEX module ERN module V43  # :nodoc: all

class DDEX::ERN::V43::ExternalResourceLink < Element
  include ROXML


  xml_name "ExternalResourceLink"

      xml_accessor :urls, :as => [], :from => "URL", :required => true
      xml_accessor :validity_period, :as => DDEX::ERN::V43::PeriodWithoutFlags, :from => "ValidityPeriod", :required => false
      xml_accessor :external_link, :from => "ExternalLink", :required => false
      xml_accessor :externally_linked_resource_types, :as => [DDEX::ERN::V43::ExternallyLinkedResourceType], :from => "ExternallyLinkedResourceType", :required => false
      xml_accessor :file_format, :from => "FileFormat", :required => false


  

end

end end end
