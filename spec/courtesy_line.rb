require "spec_helper"

describe DDEX::CourtesyLine do
  let(:attributes) { Fabricate.attributes_for(:courtesy_line) }
  let(:xmldoc) { %|<CourtesyLine LanguageAndScriptCode="#{attributes["language_and_script_code"]}">#{attributes["value"]}</CourtesyLine>| }

  it_should_behave_like "a DDEX element"
end
