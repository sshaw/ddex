require "spec_helper"

describe DDEX::V20120404::DDEXC::VideoId do
  let(:attributes) { Fabricate.attributes_for(:video_id) }
  let(:xmldoc) {
    <<-XML
      <VideoId IsReplaced="#{attributes["replaced"]}">
        <ISRC>#{attributes["isrc"]}</ISRC>
        <ISAN>#{attributes["isan"]}</ISAN>
        <VISAN>#{attributes["visan"]}</VISAN>
        #{attributes["catalog_number"].to_xml}
        #{to_xml(attributes["proprietary_ids"])}
      </VideoId>
    XML
  }

  it_should_behave_like "a DDEX element"
end
