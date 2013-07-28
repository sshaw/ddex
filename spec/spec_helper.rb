require "rspec"
require "test_xml/spec"
require "ddex"
require "fabrication"

Dir[ File.dirname(__FILE__) + "/support/**/*.rb" ].each { |path| require path }

unless [].respond_to?(:sample)
  class Array
    def sample
      choice                    # < 1.9
    end
  end
end
