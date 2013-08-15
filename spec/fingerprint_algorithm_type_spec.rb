require "spec_helper"

describe DDEX::FingerprintAlgorithmType do
  let(:attributes) { Fabricate.attributes_for(:fingerprint_algorithm_type) }
  let(:xmldoc) { %|<FingerprintAlgorithmType Namespace="#{attributes["namespace"]}" UserDefinedValue="#{attributes["user_defined_value"]}">#{attributes["value"]}</FingerprintAlgorithmType>| }

  it_should_behave_like "a DDEX element"
end
