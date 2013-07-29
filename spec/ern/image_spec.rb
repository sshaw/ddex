require "spec_helper"

describe DDEX::ERN::Image do
  let(:attributes) { Fabricate.attributes_for(:ern_image, :image_type => Fabricate.attributes_for(:image_type)) }
  let(:xmldoc) {
    <<-XML
      <Image IsArtistRelated="#{attributes["artist_related"]}" LanguageAndScriptCode="#{attributes["language_and_script_code"]}">
        #{Fabricate(:image_type).to_xml}
      </Image>
    XML
  }

  it { should be_a_kind_of DDEX::Image }
  it_should_behave_like "a DDEX element"
end
