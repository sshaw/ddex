require "spec_helper"

describe DDEX::File do
  options = {
    :file_name => "file.mp3",
    :file_path => "/a/path/file.mp3",
    :hash_sum  => "X123456789",
    :hash_sum_algorithm => "MD5",
    :url => "file:///a/path/file.mp3"
  }

  subject { described_class.new(options) }

  it { should be_a_kind_of DDEX::Element }
  its(:to_hash) { should eq options }
  its(:to_xml) { should equal_xml(<<-XML)
      <File>
        <FilePath>/a/path/file.mp3</FilePath>
        <FileName>file.mp3</FileName>
        <HashSum>
          <HashSumAlgorithmType>MD5</HashSumAlgorithmType>
          <HashSum>X123456789</HashSum>
        </HashSum>
        <URL>file:///a/path/file.mp3</URL>
      </File>
    XML
  }

  options.each do |method, value|
    its(method) { should eq value }
  end
end
