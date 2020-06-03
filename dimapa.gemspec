Gem::Specification.new do |s|
  s.name = "dimapa"
  s.version = "0.1.0"
  s.date = "2020-06-03"
  s.summary = "Ruby implementation of Google's diff_match_patch"
  s.description = "Ruby implementation of Google's diff_match_patch"
  s.authors = ["Ezekiel Templin", "Jorge Kalmbach"]
  s.email = ["zeke@templ.in", "kalmbach@gmail.com"]
  s.files = [
    "README.md",
    "LICENSE",
    "Rakefile",
    "Gemfile",
    "lib/dimapa.rb",
    "lib/diff_methods.rb",
    "lib/patch_obj.rb",
    "scripts/speedtest.rb",
    "scripts/speedtest/speedtest1.txt",
    "scripts/speedtest/speedtest2.txt",
    "test/helper.rb",
    "test/test_dimapa.rb"
  ]
  s.homepage = "https://github.com/ezkl/dimapa"
  s.add_development_dependency "rake"
  s.add_development_dependency "minitest"
end
