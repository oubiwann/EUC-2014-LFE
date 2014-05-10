(defmodule euc-2014-cover
  (export all))

(include-lib "include/macros.lfe")

(defun build ()
  (list
    (title-page
      (h1 "The State of LFE")
      (h2 "A Lisp Flavoured Smörgåsbord")
      (h3 "Erlang User Conference, Stockholm 2014")
      (div "Duncan McGreggor")
      (notes ""))))
