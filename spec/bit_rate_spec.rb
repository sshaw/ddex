require "spec_helper"

describe DDEX::BitRate do
  let(:attributes) { Fabricate.attributes_for(:bit_rate) }
  let(:xmldoc) {
    %|<BitRate UnitOfMeasure="#{attributes["unit_of_measure"]}">#{attributes["rate"]}</BitRate>|
  }

  it_should_behave_like "a DDEX element"
end
