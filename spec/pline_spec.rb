require "spec_helper"

describe DDEX::V20120404::DDEXC::PLine do
  let(:attributes) { Fabricate.attributes_for(:pline) }
  let(:xmldoc) {
    <<-XML
      <PLine LanguageAndScriptCode="#{attributes["language_and_script_code"]}" PLineType="#{attributes["pline_type"]}">
        <Year>#{attributes["year"]}</Year>
        <PLineCompany>#{attributes["pline_company"]}</PLineCompany>
        <PLineText>#{attributes["pline_text"]}</PLineText>
      </PLine>
   XML
  }

  it_should_behave_like "a DDEX element"
end
