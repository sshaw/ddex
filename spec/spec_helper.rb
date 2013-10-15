require "rspec"
require "test_xml/spec"
require "ddex"

module SpecHelper
  def fixture(basename)
    basename << ".xml" unless basename.end_with?(".xml")
    File.join(File.dirname(__FILE__), "fixtures", basename)
  end  
end

RSpec.configure do |cfg|
  cfg.include SpecHelper
end
