require "spec_helper"

describe DDEX::Image do
  let(:attributes) { Fabricate.attributes_for(:image) }
  let(:xmldoc) {
    <<-XML
      <Image>
        <ImageType>#{attributes["image_type"]}</ImageType>
        #{attributes["image_id"].to_xml}
        <ResourceReference>#{attributes["resource_reference"]}</ResourceReference>
        #{attributes["image_details"].to_xml}
      </Image>
    XML
  }
end
