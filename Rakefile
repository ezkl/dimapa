require "rake/testtask"
require "standard/rake"
require "bundler/gem_tasks"

Rake::TestTask.new do |t|
  t.libs << "test"
end

namespace :speedtest do
  desc "Run benchmark"
  task :plain do
    ruby "scripts/speedtest.rb"
  end

  desc "Run benchmark with JIT enabled"
  task :jit do
    ruby "--jit scripts/speedtest.rb"
  end

  desc "Run all benchmarks"
  task :all do
    puts "Running benchmark without JIT enabled"
    Rake::Task["speedtest:plain"].invoke

    puts

    puts "Running benchmark with JIT enabled"
    Rake::Task["speedtest:jit"].invoke
  end
end

task :speedtest do
  Rake::Task["speedtest:all"].invoke
end

desc "Start REPL"
task :console do
  require "pry"
  require "dimapa"
  Pry.start
end

desc "Run tests and linter"
task default: [:standard, :test]
