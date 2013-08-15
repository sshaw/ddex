require "spec_helper"

describe DDEX::ERN::PreviewDetails do
  let(:attributes) { Fabricate.attributes_for(:ern_preview_details) }
  let(:xmldoc) {
    <<-XML
      <PreviewDetails>
        #{attributes["part_type"].to_xml}
        <TopLeftCorner>#{attributes["top_left_corner"]}</TopLeftCorner>
        <BottomRightCorner>#{attributes["bottom_right_corner"]}</BottomRightCorner>
        #{attributes["expression_type"].to_xml}
      </PreviewDetails>
    XML
  }

  it_should_behave_like "a DDEX element"
end
