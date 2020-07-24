# DiMaPa (Diff Match and Patch)
A modern Ruby implementation of Google's [Diff Match and Patch][google]
libraries.

> The Diff Match and Patch libraries offer robust algorithms to perform the
> operations required for synchronizing plain text.

## Usage
```ruby
require 'dimapa'

dmp = DiMaPa.new # or DiffMatchPatch

diff = dmp.diff_main("This is a sentence.", "This is also a sentence.")
#=> [[:equal, "This is a"], [:insert, "lso a"], [:equal, " sentence."]]

dmp.diff_cleanup_semantic(diff)
#=> nil

# diff is modified in place
diff
#=> [[:equal, "This is "], [:insert, "also "], [:equal, "a sentence."]]

patch = dmp.patch_make(diff)
#=> [#<PatchObj:0x00005608e6ac9500 @diffs=
#     [[:equal, "This is "], [:insert, "also "], [:equal, "a senten"]],
#     @length1=16,
#     @length2=21,
#     @start1=0,
#     @start2=0>]

dmp.patch_to_text(patch)
#=> "@@ -1,16 +1,21 @@\n This is \n+also \n a senten\n"

dmp.patch_apply(patch, "This is a sentence.")
#=> ["This is also a sentence.", [true]]
```

## Installation
```sh
# RubyGem
gem install dimapa

# From source
bundle install
bundle exec rake install
```

## Benchmarks

This project includes [scripts/](speedtests) mirroring those in the official
project. Performance is on par with those reported for [Lua and Python][speedtest]
albeit run on a faster machine.

```
$ rake speedtest

              user     system      total        real
diff(t2,t1) 13.658214   0.003937  13.662151 ( 13.662453)
diff(t1,t2) 14.074079   0.000001  14.074080 ( 14.074350)
```

## Tests and Linting

```sh
bundle exec rake
```

### Fork of [kalmbach/diff_match_patch][kalmbach] b/w/o [DavidMikeSimon/diff_match_patch][davidmikesimon]
Copyright (c) 2011, Jorge Kalmbach <kalmbach.at.gmail.com>

Work was inspired by the [reima/diff_match_patch-ruby][reima] module.

[speedtest]: https://docs.google.com/spreadsheets/d/1zpZccuBpjMZTvL1nGDMKJc7rWL_m_drF4XKOJvB27Kc/edit#gid=0
[kalmbach]: https://github.com/kalmbach/diff_match_patch
[davidmikesimon]: https://github.com/DavidMikeSimon/diff_match_patch
[reima]: https://github.com/reima/diff_match_patch-ruby
[google]: https://github.com/google/diff-match-patch
