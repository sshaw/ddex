require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/fingerprint_algorithm_type"

module DDEX module V20120404 module DDEXC

class Fingerprint < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "Fingerprint"

      xml_accessor :fingerprint, :from => "Fingerprint", :required => true

      xml_accessor :fingerprint_algorithm_type, :as => DDEX::V20120404::DDEXC::FingerprintAlgorithmType, :from => "FingerprintAlgorithmType", :required => true

      xml_accessor :fingerprint_algorithm_version, :from => "FingerprintAlgorithmVersion", :required => false

      xml_accessor :fingerprint_algorithm_parameter, :from => "FingerprintAlgorithmParameter", :required => false



  
end

end end end
