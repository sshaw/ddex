require "spec_helper"

describe DDEX::CLine do
  let(:attributes) { Fabricate.attributes_for(:cline) }
  let(:xmldoc) {
    <<-XML
      <CLine LanguageAndScriptCode="#{attributes["language_and_script_code"]}">
        <Year>#{attributes["year"]}</Year>
        <CLineText>#{attributes["cline_text"]}</CLineText>
        <CLineCompany>#{attributes["cline_company"]}</CLineCompany>
      </CLine>
    XML
  }

  it_should_behave_like "a DDEX element"
end
