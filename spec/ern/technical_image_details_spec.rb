require "spec_helper"

describe DDEX::ERN::TechnicalImageDetails do
  let(:attributes) { Fabricate.attributes_for(:technical_image_details) }
  let(:xmldoc) {
    <<-XML
      <TechnicalImageDetails LanguageAndScriptCode="#{attributes["language_and_script_code"]}">
        <TechnicalResourceDetailsReference>#{attributes["technical_resource_details_reference"]}</TechnicalResourceDetailsReference>
        #{attributes["drm_platform_type"].to_xml}
        #{attributes["container_format"].to_xml}
        #{attributes["image_codec_type"].to_xml}
        #{attributes["image_height"].to_xml}
        #{attributes["image_width"].to_xml}
        <AspectRatio>#{attributes["aspect_ratio"]}</AspectRatio>
        <ColorDepth>#{attributes["color_depth"]}</ColorDepth>
        <ImageResolution>#{attributes["image_resolution"]}</ImageResolution>
        <IsPreview>#{attributes["preview"]}</IsPreview>
        #{attributes["preview_details"].to_xml}
        #{attributes["fulfillment_date"].to_xml}
        #{attributes["consumer_fulfillment_date"].to_xml}
        #{to_xml(attributes["file_availability_descriptions"])}
        #{to_xml(attributes["files"])}
        #{to_xml(attributes["fingerprints"])}
      </TechnicalImageDetails>
    XML
  }

  it_should_behave_like "a DDEX element"
end
