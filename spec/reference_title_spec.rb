require "spec_helper"

describe DDEX::ReferenceTitle do
  let(:attributes) { Fabricate.attributes_for(:reference_title) }
  let(:xmldoc) {
    <<-XML
      <ReferenceTitle LanguageAndScriptCode="#{attributes["language_and_script_code"]}">
        #{attributes["title_text"].to_xml}
        #{attributes["sub_title"].to_xml}
      </ReferenceTitle>
    XML
  }

  it_should_behave_like "a DDEX element"
end
