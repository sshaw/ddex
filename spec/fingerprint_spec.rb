require "spec_helper"

describe DDEX::V20120404::DDEXC::Fingerprint do
  let(:attributes) { Fabricate.attributes_for(:fingerprint) }
  let(:xmldoc) {
    <<-XML
      <Fingerprint>
        <Fingerprint>#{attributes["fingerprint"]}</Fingerprint>
        #{attributes["fingerprint_algorithm_type"].to_xml}
        <FingerprintAlgorithmVersion>#{attributes["fingerprint_algorithm_version"]}</FingerprintAlgorithmVersion>
        <FingerprintAlgorithmParameter>#{attributes["fingerprint_algorithm_parameter"]}</FingerprintAlgorithmParameter>
      </Fingerprint>
    XML
  }

  it_should_behave_like "a DDEX element"
end
