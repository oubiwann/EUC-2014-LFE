(defmodule euc-2014-ch3
  (export all))

(include-lib "deps/reveal-js/include/macros.lfe")

(defun build ()
  (chapter
    (h1 '"lfe-reveal-js")
    (h3 '"Check it out.")
    (p '"https://github.com/lfe/lfe-reveal-js")))
