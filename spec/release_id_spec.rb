require "spec_helper"

describe DDEX::V20120404::DDEXC::ReleaseId do
  let(:attributes) { Fabricate.attributes_for(:release_id) }
  let(:xmldoc) {
    <<-XML
      <ReleaseId IsReplaced="#{attributes["replaced"]}">
        <GRid>#{attributes["grid"]}</GRid>
        <ISRC>#{attributes["isrc"]}</ISRC>
        #{attributes["icpn"].to_xml}
        #{attributes["catalog_number"].to_xml}
        #{to_xml(attributes["proprietary_ids"])}
      </ReleaseId>
    XML
  }  

  it_should_behave_like "a DDEX element"
end
