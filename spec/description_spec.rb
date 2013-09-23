require "spec_helper"

describe DDEX::V20120404::DDEXC::Description do
  let(:attributes) { Fabricate.attributes_for(:description) }
  let(:xmldoc) { %|<Description LanguageAndScriptCode="#{attributes["language_and_script_code"]}">#{attributes["value"]}</Description>| }

  it_should_behave_like "a DDEX element"
end
