(defmodule euc-2014-ch2
  (export all))

(include-lib "include/macros.lfe")

(defun build ()
  (chapter
    (slide
      (h1 "Introduction"))
    (overview-slide
      (h2 "Introduction: Overview")
      (ul
        (list
          (li "Why Lisp?")
          (ul-frag
            (li "A Historical Glance")
            (li "The Best of Two Worlds")
            (li "Why not 'Just Erlang'?"))
          (li "Quick Tour of LFE")
          (ul-frag
              (li "Origins of LFE")
              (li "LFE Basics")
              (li "Erlang Idioms in LFE")
              (li "Sample Code"))))
      (notes "In this fist section of the talk I'm going to cover some "
             "basics -- a refresher to those familiar with Lisps, or "
             "a gentle crash-course for those who have not encountered Lisp "
             "previously."))
    (slide
      (h2 "Why Lisp?")
      (img '(src "/images/lisp.png")))
    (slide
      (h1 "Introduction")
      (h2 "Why Lisp?")
      (img '(src "/images/lisp.png")))
    (slide
      (h2 "Lisp Flavored Erlang")
      (img '(src "/images/LispFlavoredErlang-small-square.png")))
    (slide
      (h1 ""))
    (slide
      (h1 ""))
    ))
