require "spec_helper"

describe DDEX::ERN::Image do
  options = {
    :artist_related => false,
    :language => "en-US",
    :type => "Cover"
  }

  subject { described_class.new(options) }

  it { should be_a_kind_of DDEX::Image }
  its(:to_hash) { should eq options }
  its(:to_xml) {
    should equal_xml(<<-XML)
      <Image IsArtistRelated="false" LanguageAndScriptCode="en-US">
        <ImageType>Cover</ImageType>
      </Image>
    XML
  }
end
