require "spec_helper"

describe DDEX::V20120404::DDEXC::AvRating do
  let(:attributes) { Fabricate.attributes_for(:av_rating) }
  let(:xmldoc) {
    <<-XML
      <AvRating>
        <RatingText>#{attributes["rating_text"]}</RatingText>
        #{attributes["rating_agency"].to_xml}
      </AvRating>
    XML
  }  

  it_should_behave_like "a DDEX element"
end
