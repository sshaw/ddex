require "rake"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => "spec"

task :generate do
  schema = ENV["SCHEMA"]
  abort "usage: rake generate SCHEMA=the_schema.xsd" unless schema
  sh "jaxb2ruby -t ddex.erb -n namespaces.yml #{schema}"
end
