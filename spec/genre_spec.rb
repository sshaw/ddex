require "spec_helper"

describe DDEX::V20120404::DDEXC::Genre do
  let(:attributes) { Fabricate.attributes_for(:genre) }
  let(:xmldoc) {
    <<-XML
      <Genre LanguageAndScriptCode="#{attributes["language_and_script_code"]}">
        #{attributes["genre_text"].to_xml}
        #{attributes["sub_genre"].to_xml}
      </Genre>
    XML
  }

  it_should_behave_like "a DDEX element"
end
