require "spec_helper"

describe DDEX::Title do
  options = {
    :language => "en-US",
    :title => "Great Title",
    :subtitle => ["Really Great"],
    :title_type => "OriginalTitle"
  }

  subject { described_class.new(options) }

  it { should be_a_kind_of DDEX::Element }
  its(:to_hash) { should eq options }
  its(:to_xml) { should equal_xml(<<-XML)
      <Title TitleType="OriginalTitle" LanguageAndScriptCode="en-US">
        <TitleText>Great Title</TitleText>
        <SubTitle>Really Great</SubTitle>
      </Title>
    XML
  }
end
