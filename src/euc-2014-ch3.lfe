(defmodule euc-2014-ch3
  (export all))

(include-lib "include/macros.lfe")

(defun build ()
  (chapter
    (slide
      (h1 "New Developments"))
    (new-developments-preview)
    (new-developments)
    ))

(defun new-developments-preview ()
  (overview-slide
    (h2 "New Developments: Preview")
    (ul
      (list
        (li "Released Features")
        (li "New Example Code")
        (li "New Documentation")
        (li "Current Work")
        (li "LFE Roadmap")
        (li "Community Projects")))
    (notes "")))

(defun new-developments ()
  (list
    (slide
      (h2 "Released Features")
      (ul
        (list
          (li "XXX")
          (li "XXX")
          (li "XXX")
          (li "XXX")
          (li "XXX")
          (li "XXX")))
      (notes ""))
    (slide
      (h2 "New Example Code")
      (ul
        (list
          (li "XXX")
          (li "XXX")
          (li "XXX")
          (li "XXX")
          (li "XXX")
          (li "XXX")))
      (notes ""))
    (slide
      (h2 "New Documentation")
      (ul
        (list
          (li "XXX")
          (li "XXX")
          (li "XXX")
          (li "XXX")
          (li "XXX")
          (li "XXX")))
      (notes ""))
    (slide
      (h2 "Current Work")
      (ul
        (list
          (li "XXX")
          (li "XXX")
          (li "XXX")
          (li "XXX")
          (li "XXX")
          (li "XXX")))
      (notes ""))
    (slide
      (h2 "Roadmap")
      (ul
        (list
          (li "XXX")
          (li "XXX")
          (li "XXX")
          (li "XXX")
          (li "XXX")
          (li "XXX")))
      (notes ""))
    (slide
      (h2 "Community Projects")
      (ul
        (list
          (li "XXX")
          (li "XXX")
          (li "XXX")
          (li "XXX")
          (li "XXX")
          (li "XXX")))
      (notes ""))
    ))
