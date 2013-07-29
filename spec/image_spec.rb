require "spec_helper"

describe DDEX::Image do
  let(:image_id) { Fabricate(:image_id) }
  let(:image_details) { Fabricate(:image_details) }
  let(:attributes) { Fabricate.attributes_for(:image, :image_id => image_id, :image_details => image_details) }
  let(:xmldoc) {
    <<-XML
      <Image>
        <ImageType>#{attributes["image_type"]}</ImageType>
        #{image_id.to_xml}
        <ResourceReference>#{attributes["resource_reference"]}</ResourceReference>
        #{image_details.to_xml}
      </Image>
    XML
  }
end
