require "spec_helper"

describe DDEX::ArtistRole do
  let(:attributes) { Fabricate.attributes_for(:artist_role) }
  let(:xmldoc) { 
    %|<ArtistRole UserDefinedValue="#{attributes["user_defined_value"]}" Namespace="#{attributes["namespace"]}">#{attributes["value"]}</ArtistRole>|
  }

  it_should_behave_like "a DDEX element"
end
