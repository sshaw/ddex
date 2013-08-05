require "spec_helper"

describe DDEX::ERN::Image do
  let(:attributes) { Fabricate.attributes_for(:ern_image) }
  let(:xmldoc) {
    <<-XML
      <Image IsUpdated="#{attributes["updated"]}" LanguageAndScriptCode="#{attributes["language_and_script_code"]}">
        #{attributes["image_type"].to_xml}
        <IsArtistRelated>#{attributes["artist_related"]}</IsArtistRelated>
        #{to_xml(attributes["image_ids"])}
        <ResourceReference>#{attributes["resource_reference"]}</ResourceReference>
        #{to_xml(attributes["titles"])}
        #{attributes["creation_date"].to_xml}
        #{to_xml(attributes["image_details_by_territory"])}
      </Image>
    XML
  }

  it { should be_a_kind_of DDEX::Image }
  it_should_behave_like "a DDEX element"
end
