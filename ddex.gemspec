require File.expand_path("../lib/ddex/version", __FILE__)
require "date"

Gem::Specification.new do |s|
  s.name        = "ddex"
  s.version     = DDEX::VERSION
  s.date        = Date.today
  s.summary     = "DDEX metadata serialization"
  s.description =<<-DESC
  DESC
  s.authors     = ["Skye Shaw"]
  s.email       = "skye.shaw@gmail.com"
  s.test_files  = Dir["spec/**/*.*"]
  s.extra_rdoc_files = %w[README.rdoc]
  s.files       = Dir["lib/**/*.rb"] + s.test_files + s.extra_rdoc_files
  s.homepage    = "http://github.com/sshaw/ddex"
  s.license     = "MIT"
  s.add_dependency "roxml"
  s.add_dependency "nokogiri"
  s.add_dependency "activesupport", "~> 2.3"
  s.add_development_dependency "fabrication"
  s.add_development_dependency "rake", "~> 0.9.2"
  s.add_development_dependency "rspec", "~> 2.9"
  s.add_development_dependency "test_xml"
end
