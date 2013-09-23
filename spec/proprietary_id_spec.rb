require "spec_helper"

describe DDEX::V20120404::DDEXC::ProprietaryId do
  let(:attributes) { Fabricate.attributes_for(:proprietary_id) }
  let(:xmldoc) { %|<ProprietaryId Namespace="a_namespace">X123</ProprietaryId>| }

  it_should_behave_like "a DDEX element"
end
