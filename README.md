# DiMaPa (Ruby Implementation of Google's DiffMatchPatch)

## Usage
```ruby
require 'dimapa'
dmp = DiMaPa.new
diff = dmp.diff_main("This is a sentence.", "This is also a sentence.")
dmp.diff_cleanup_semantic(diff)
patch = dmp.patch_make(diff)
dmp.patch_to_text(patch)
dmp.patch_apply(patch, "This is a sentence.")
```

A ruby implementation of the google diff-match-patch library.
http://code.google.com/p/google-diff-match-patch/

The Diff Match and Patch libraries offer robust algorithms to perform the operations required for synchronizing plain text.

  This work was inspired by the diff_match_patch-ruby module.
  (https://github.com/reima/diff_match_patch-ruby)



### Forked from kalmbach/diff_match_patch
Copyright (c) 2011, Jorge Kalmbach <kalmbach.at.gmail.com>
