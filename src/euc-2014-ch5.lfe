(defmodule euc-2014-ch5
  (export all))

(include-lib "include/macros.lfe")

(defun build ()
  (chapter
    (slide
      (h1 "Special Projects"))
    (special-projects-preview)
    (special-projects)
    ))

(defun special-projects-preview ()
  (overview-slide
    (h2 "Special Projects: Preview")
    (ul
      (list
        (li "Calrissian")
        (li "LFE + Elli Web Framework")
        (li "LFE + YAWS")
        (li "lfetool")
        (li "jlfe")))
    (notes "")))

(defun special-projects ()
  (list
    (slide
      (h2 "Calrissian")
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
      (h2 "LFE + Elli Web Framework")
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
      (h2 "LFE + YAWS")
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
      (h2 "lfetool")
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
      (h2 "jlfe")
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
