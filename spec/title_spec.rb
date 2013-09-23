require "spec_helper"

describe DDEX::V20120404::DDEXC::Title do
  let(:attributes) { Fabricate.attributes_for(:title) }
  let(:xmldoc) {
    <<-XML
      <Title TitleType="#{attributes["title_type"]}" LanguageAndScriptCode="#{attributes["language_and_script_code"]}">
        #{attributes["title_text"].to_xml}
        #{to_xml(attributes["sub_title"]).gsub("TypedSubTitle", "SubTitle")}
      </Title>
    XML
  }

  it_should_behave_like "a DDEX element"
end
