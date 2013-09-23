require "spec_helper"

describe DDEX::V20120404::DDEXC::ImageId do
  let(:attributes) { Fabricate.attributes_for(:image_id) }
  let(:xmldoc) {
    <<-XML
      <ImageId IsReplaced="#{attributes["replaced"]}">
        #{to_xml(attributes["proprietary_ids"])}
      </ImageId>
    XML
  }

  it_should_behave_like "a DDEX element"
end
