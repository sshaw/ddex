require "ddex/fingerprint_algorithm_type"

module DDEX
  class Fingerprint < Element
    xml_accessor :fingerprint
    xml_accessor :fingerprint_algorithm_type, :as => FingerprintAlgorithmType
    #alias_method :algorithm_type, :fingerprint_algorithm_type

    xml_accessor :fingerprint_algorithm_version
    #alias_method :algorithm_version, :fingerprint_algorithm_version

    xml_accessor :fingerprint_algorithm_parameter
    #alias_method :algorithm_parameter, :fingerprint_algorithm_parameter
  end
end
