require "spec_helper"

describe DDEX::V20120404::DDEXC::File do
  let(:attributes) { Fabricate.attributes_for(:file) }
  let(:xmldoc) {
    <<-XML
      <File>
        <FilePath>#{attributes["file_path"]}</FilePath>
        <FileName>#{attributes["file_name"]}</FileName>
        <HashSum>
          <HashSumAlgorithmType>#{attributes["hash_sum_algorithm"]}</HashSumAlgorithmType>
          <HashSum>#{attributes["hash_sum"]}</HashSum>
        </HashSum>
        <URL>#{attributes["url"]}</URL>
      </File>
    XML
  }

  it_should_behave_like "a DDEX element"
end
