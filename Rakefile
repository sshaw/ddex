require "rake"
require "rspec/core/rake_task"
require "tmpdir"

RSpec::Core::RakeTask.new(:spec)

task :default => "spec"

desc "Generate code from the schema given by SCHEMA"
task :generate do
  schema = ENV["SCHEMA"]
  output = File.join(Dir.tmpdir, "ddex-schema-#{Time.now.to_i}")

  abort "code generation requires JRuby" unless RUBY_PLATFORM == "java"
  abort "usage: rake generate SCHEMA=schema.xsd" unless schema

  sh "jaxb2ruby -o #{output} -t etc/ddex.erb -n etc/namespaces.yml #{schema}" do |ok, rv|
    abort "code generation failed (#{rv.exitstatus})" unless ok
  end

  puts "Files output to #{output}"
  # TODO: Automate this
  puts "REMEMBER: For ERN 3.3 - 3.6, you'll need to modify RelatedReleaseOfferSet:", <<-DEAL
    # remove this require:
    require "ddex/ern/vXX/deal"

    # and forward declare Deal
    class Deal < Element; include ROXML end
  DEAL
end

%w[ern].each do |spec|
  root = File.expand_path("../etc/schemas/#{spec}", __FILE__)
  Dir.entries(root).each do |dir|
    next if dir == "." or dir == ".."
    # Ignore patch version
    schema = dir[0..2].to_i < 34 ? "ern-main.xsd" : "release-notification.xsd"
    schema = File.join(root, dir, schema)

    desc "Validate the instance doc given by FILE against #{spec} v#{dir}"
    task "validate:#{spec}#{dir}" do
      abort "missing FILE argument" unless ENV["FILE"]
      # Empty block to silence the stack trace, that aside, we do want verboseness
      sh "xmllint --noout --schema #{schema} #{ENV["FILE"]}" do end
    end
  end
end

desc "List currently generated versions"
task :versions do
  # Maybe better to use a method on DDEX...
  root  = File.expand_path("../lib/ddex", __FILE__)
  specs = Dir.glob("#{root}/*").select { |path| File.directory?(path) }
  specs.each do |spec|
    puts "#{File.basename(spec)}: "
    versions = Dir.glob(File.join(spec, "*")).select { |path| File.directory?(path) }
    versions.each { |version| puts "  #{File.basename(version)}" }
  end
end
