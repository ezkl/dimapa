require "rake/testtask"
require "standard/rake"

Rake::TestTask.new do |t|
  t.libs << "test"
end

desc "Run benchmarking speedtest"
task :speedtest do
  ruby "scripts/speedtest.rb"
end

desc "Start REPL"
task :console do
  require "pry"
  require "diff_match_patch"
  Pry.start
end

desc "Run tests and linter"
task default: [:standard, :test]
