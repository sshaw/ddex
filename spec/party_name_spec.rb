require "spec_helper"

describe DDEX::PartyName do
  let(:attributes) { Fabricate.attributes_for(:party_name) }
  let(:xmldoc) {
    <<-XML
      <PartyName>
        <FullName>#{attributes["full_name"]}</FullName>
        <AbbreviatedName>#{attributes["abbreviated_name"]}</AbbreviatedName>
      </PartyName>
    XML
  }

  it_should_behave_like "a DDEX element"
end
