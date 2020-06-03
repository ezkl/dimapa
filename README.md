# DiMaPa (Ruby Implementation of Google's DiffMatchPatch)

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

A ruby implementation of the google diff-match-patch library.
http://code.google.com/p/google-diff-match-patch/

The Diff Match and Patch libraries offer robust algorithms to perform the operations required for synchronizing plain text.

  This work was inspired by the diff_match_patch-ruby module.
  (https://github.com/reima/diff_match_patch-ruby)



### Forked from kalmbach/diff_match_patch
Copyright (c) 2011, Jorge Kalmbach <kalmbach.at.gmail.com>
