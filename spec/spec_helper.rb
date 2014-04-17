require "rspec"
require "test_xml/spec"
require "nokogiri"
require "ddex"

module SpecHelper
  FIXTURES = File.join(File.dirname(__FILE__), "fixtures")

  def fixture(basename)
    basename << ".xml" unless basename.end_with?(".xml")
    File.join(FIXTURES, basename)
  end

  def each_fixture(name)
    Dir[File.join(FIXTURES, name, "*.xml")]
  end

  def load_fixture(name)
    Nokogiri::XML(File.read(fixture(name)))
  end
end

RSpec.configure do |cfg|
  cfg.extend  SpecHelper
  cfg.include SpecHelper
end
