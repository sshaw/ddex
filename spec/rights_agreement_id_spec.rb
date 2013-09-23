require "spec_helper"

describe DDEX::V20120404::DDEXC::RightsAgreementId do
  let(:attributes) { Fabricate.attributes_for(:rights_agreement_id) }
  let(:xmldoc) {
    <<-XML
      <RightsAgreementId>
        <MWLI>#{attributes["mwli"][0]}</MWLI>
        #{to_xml(attributes["proprietary_ids"])}
      </RightsAgreementId>
    XML
  }

  it_should_behave_like "a DDEX element"
end
