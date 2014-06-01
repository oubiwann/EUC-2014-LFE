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
             "As usual, I have been unable to resist cramming as much "
             "as possible into a discussion on LFE. We can blame this on "
             "my child-like enthusiasm and then do the best we can with "
             "the alloted time ;-)"))))
