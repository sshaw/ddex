require "spec_helper"

describe DDEX::LabelName do
  let(:attributes) { Fabricate.attributes_for(:label_name) }
  let(:xmldoc) { %|<LabelName LanguageAndScriptCode="#{attributes["language_and_script_code"]}" LabelNameType="#{attributes["label_name_type"]}">#{attributes["value"]}</LabelName>| }

  it_should_behave_like "a DDEX element"
end
