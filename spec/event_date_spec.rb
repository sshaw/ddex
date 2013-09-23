require "spec_helper"

describe DDEX::V20120404::DDEXC::EventDate do
  let(:attributes) { Fabricate.attributes_for(:event_date) }
  let(:xmldoc) {
    %|<EventDate IsApproximate="#{attributes["approximate"]}"
                 IsAfter="#{attributes["after"]}"
                 IsBefore="#{attributes["before"]}"
                 LanguageAndScriptCode="#{attributes["language_and_script_code"]}"
                 LocationDescription="#{attributes["location_description"]}"
                 TerritoryCode="#{attributes["territory"]}">#{attributes["value"]}</EventDate>|
  }

  it_should_behave_like "a DDEX element"
end
