require "spec_helper"

describe DDEX::V20120404::DDEXC::SoundRecordingType do
  let(:attributes) { Fabricate.attributes_for(:sound_recording_type) }
  let(:xmldoc) { %|<SoundRecordingType Namespace="#{attributes["namespace"]}" UserDefinedValue="#{attributes["user_defined_value"]}">#{attributes["value"]}</SoundRecordingType>| }

  it_should_behave_like "a DDEX element"
end
