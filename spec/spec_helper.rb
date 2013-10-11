require "rspec"
#require "test_xml/spec"
require "ddex"
require "fabrication"

# %w[/support/**/*.rb 
#    /../lib/ddex/v20120404/ddexc/*.rb
#    /../lib/ddex/ern/v341/*.rb].each do |glob|
#   Dir[ File.dirname(__FILE__) + glob ].each { |path| require path }
# end

unless [].respond_to?(:sample)
  class Array
    def sample
      choice                    # < 1.9
    end
  end
end

module SpecHelper
  def to_xml(obj)
    Array(obj).map { |e| e.to_xml }.join("\n")
  end
end

RSpec.configure do |cfg|
  cfg.include SpecHelper
end
