require "spec_helper"

describe DDEX::RightsController do
  let(:attributes) { Fabricate.attributes_for(:rights_controller) }
  let(:xmldoc) {
    <<-XML
      <RightsController>
        #{attributes["party_id"].to_xml}
        #{to_xml(attributes["party_names"])}
        #{to_xml(attributes["rights_controller_roles"])}
        <RightShareUnknown>#{attributes["right_share_unknown"]}</RightShareUnknown>
        <RightSharePercentage>#{attributes["right_share_percentage"]}</RightSharePercentage>
      </RightsController>
    XML
  }

  it_should_behave_like "a DDEX element"
end
