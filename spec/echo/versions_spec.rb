require "spec_helper"
require "active_support/core_ext/string"

shared_examples_for "metadata serialization" do |path|
  it "serializes the metadata" do
    xml  = File.read(path)
    spec = DDEX::ECHO.read(xml)
    # TODO: DDEX.read(xml), DDEX.write
    expect(DDEX::ECHO.write(spec)).to equal_xml(xml)
  end
end

describe DDEX::ECHO do
  DDEX::ECHO.supported_versions.each do |version|
    describe "ECHO #{version} metadata serialization" do
      each_fixture("echo/#{ version.tr(".", "") }").each do |path|
        context "given #{File.basename(path)}" do
          include_examples "metadata serialization", path
        end
      end
    end
  end
end
