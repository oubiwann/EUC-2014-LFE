;;;; Chapter content includes:
;;;;  * Overview
;;;;
(defmodule euc-2014-ch1
  (export all))

(include-lib "include/macros.lfe")

(defun build ()
  (chapter
    (overview-slide
      (h1 "Overview")
      (quick-ul
        "Introduction"
        "New Developments"
        "A Tour of LFE"
        "Special Projects"
        "Language Interop"
        "Wrap-up")
      (notes "Here's what we're going to cover in this presentation. "
             (br)(br)
             (quick-ul
               "A brief introduction"
               "The latest developments in LFE-proper"
               "A quick language tour, for those unfamiliar with LFE, or anyone who might benefit from a refresher"
               "A highlight of some of the more recent LFE projects"
               "I'll share with you evidence that LFE is not an island ;-)"
               "And then we'll wrap up this session.")
             (br)(br)
             "This is a lot :-)"
             (br)(br)
             "As you can see, this isn't just a status report on the "
             "LFE codebase. Rather, I'm sharing glimpses of the many "
             "things happening inside an Erlang micro-community... "
             "one that supports Erlang BEAM languages -- directly, "
             "through its own work; and indirectly, by encouraging the "
             "exploration of other languages and features in our ecosystem."))))
