require "rake/testtask"
require "standard/rake"

Rake::TestTask.new do |t|
  t.libs << "test"
end

desc "Run tests and linter"
task default: [:standard, :test]
