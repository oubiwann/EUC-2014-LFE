(defmodule euc-2014-ch1
  (export all))

(include-lib "include/macros.lfe")

(defun build ()
  (chapter
    (overview-slide
      (h1 "Overview")
      (ul
        (list
          (li "Introduction")
          (li "New Developments")
          (li "Special Projects")
          (li "Language Interop")
          (li "Wrap-up")))
      (notes "Here's what we're going to cover in this presentation. "
             (br)(br)
             "As usual, I have been unable to resist cramming as much "
             "as possible into a discussion on LFE. We can blame this on "
             "my child-like enthusiasm and then do the best we can with "
             "the alloted time ;-)"))))
