(defmodule euc-2014-intro
  (export all))

(include-lib "include/macros.lfe")

(defun build ()
  (list
    (title-page
      (h1 "The State of LFE")
      (h2 "Erlang User Conference")
      (h3 "Stockholm 2014")
      (div "Duncan McGreggor")
      (notes ""))
    (chapter
      (slide
        (h1 "Overview"))
      (slide
        (h1 "test")
        (p "with some content"))
      (slide
        (h1 "here's a slide")
        (p "some content")))))
