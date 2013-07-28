require "spec_helper"

describe DDEX::Title do
  let(:attributes) { Fabricate.attributes_for(:title) }
  let(:xmldoc) {
    <<-XML
      <Title TitleType="#{attributes["title_type"]}" LanguageAndScriptCode="#{attributes["language_and_script_code"]}">
        <TitleText>#{attributes["title"]}</TitleText>
        <SubTitle>#{attributes["subtitle"][0]}</SubTitle>
      </Title>
    XML
  }

  it_should_behave_like "a DDEX element"
end
