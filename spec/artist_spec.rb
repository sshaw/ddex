require "spec_helper"

describe DDEX::Artist do
  let(:attributes) { Fabricate.attributes_for(:artist) }
  let(:xmldoc) {
    <<-XML
      <Artist SequenceNumber="#{attributes["sequence_number"]}">
        #{to_xml(attributes["party_names"])}
        #{attributes["party_id"].to_xml}
        #{to_xml(attributes["artist_roles"])}
      </Artist>
    XML
  }

  it_should_behave_like "a DDEX element"
end
