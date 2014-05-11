(defmodule euc-2014-ch5
  (export all))

(include-lib "include/macros.lfe")

(defun build ()
  (chapter
    (slide
      (h1 "Language Interop"))
    (overview-slide
      (h2 "Language Interop: Overview")
      (h2 ""))
    (slide
      (h1 ""))
    ))

(defun build ()
  (chapter
    (slide
      (h1 "Language Interop"))
    (language-interop-preview)
    (language-interop)
    ))

(defun language-interop-preview ()
  (overview-slide
    (h2 "Language Interop: Preview")
    (ul
      (list
        (li "LFE & Erlang")
        (li "LFE & Elixir")
        (li "LFE & Java/Erjang")
        (li "LFE & Clojure")))
    (notes "")))

(defun language-interop ()
  (list
    (slide
      (h2 "LFE & Erlang")
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
      (h2 "LFE & Elixir")
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
      (h2 "LFE & Java/Erjang")
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
      (h2 "LFE & Clojure")
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
