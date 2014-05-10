(defmodule euc-2014-ch1
  (export all))

(include-lib "include/macros.lfe")

(defun build ()
  (chapter
    (slide
      (h1 "Overview")
      (ul
        (list
          (li "Introduction")
          (li "New Developments")
          (li "Special Projects")
          (li "Language Interop"))))))
