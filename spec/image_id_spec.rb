require "spec_helper"

describe DDEX::ImageId do
  let(:attributes) { Fabricate.attributes_for(:image_id) }
  let(:xmldoc) {
    <<-XML
      <ImageId IsReplaced="#{attributes["replaced"]}">
        #{attributes["proprietary_id"].to_xml}
      </ImageId>
    XML
  }

  it_should_behave_like "a DDEX element"
end
