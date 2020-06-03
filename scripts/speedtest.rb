require "diff_match_patch"
require "benchmark"

text1 = File.read("scripts/speedtest/speedtest1.txt")
text2 = File.read("scripts/speedtest/speedtest2.txt")

dmp = DiffMatchPatch.new
dmp.diff_timeout = 0.0

Benchmark.bm(7) do |x|
  x.report("diff(t2,t1)") { dmp.diff_main(text2, text1, false) }
  x.report("diff(t1,t2)") { dmp.diff_main(text1, text2, false) }
end
