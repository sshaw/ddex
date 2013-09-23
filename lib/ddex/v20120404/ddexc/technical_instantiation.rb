require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/bit_rate"

module DDEX module V20120404 module DDEXC

class TechnicalInstantiation < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "TechnicalInstantiation"

      xml_accessor :drm_enforcement_type, :from => "DrmEnforcementType", :required => false

      xml_accessor :video_definition_type, :from => "VideoDefinitionType", :required => false

      xml_accessor :coding_type, :from => "CodingType", :required => false

      xml_accessor :bit_rate, :from => "BitRate", :required => false



  
end

end end end
