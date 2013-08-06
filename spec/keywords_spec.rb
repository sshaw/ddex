require "spec_helper"

describe DDEX::Keywords do
  let(:attributes) { Fabricate.attributes_for(:keywords) }
  let(:xmldoc) {
    %|<Keywords LanguageAndScriptCode="#{attributes["language_and_script_code"]}">#{attributes["value"]}</Keywords>|
  }

  it_should_behave_like "a DDEX element"
end
