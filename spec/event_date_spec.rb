require "spec_helper"

describe DDEX::EventDate do
  let(:attributes) { Fabricate.attributes_for(:event_date) }
  let(:xmldoc) {
    %|<EventDate IsApproximate="#{attributes["approximate"]}"
                 IsAfter="#{attributes["after"]}"
                 IsBefore="#{attributes["before"]}"
                 Language="#{attributes["language"]}"
                 LocationDescription="#{attributes["location_description"]}"
                 TerritoryCode="#{attributes["territory"]}"/>|
  }

  it_should_behave_like "a DDEX element"
end
