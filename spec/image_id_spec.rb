require "spec_helper"

describe DDEX::ImageId do
  let(:proprietary_id) { Fabricate(:proprietary_id) }
  let(:attributes) { Fabricate.attributes_for(:image_id, :proprietary_id => [proprietary_id]) }
  let(:xmldoc) {
    <<-XML
      <ImageId IsReplaced="#{attributes["replaced"]}">
        #{proprietary_id.to_xml}
      </ImageId>
    XML
  }

  it_should_behave_like "a DDEX element"
end
