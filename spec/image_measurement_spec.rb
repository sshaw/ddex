require "spec_helper"
require "active_support/core_ext/string"

%w[ImageHeight ImageWidth].each do |dim|
  describe DDEX.const_get(dim) do
    let(:attributes) { Fabricate.attributes_for(dim.underscore) }
    let(:xmldoc) { %|<#{dim} UnitOfMeasure="#{attributes["unit_of_measure"]}">#{attributes["value"]}</#{dim}>| }

    it_should_behave_like "a DDEX element"
  end
end
