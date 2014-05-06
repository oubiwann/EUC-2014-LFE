(defmodule euc-2014-content
  (export all))

(include-lib "deps/reveal-js/include/macros.lfe")

(defun build-slide-deck (arg-data)
  (deck
    (euc-2014-slides:introduction arg-data)
    (euc-2014-slides:chapter-1 arg-data)
    (euc-2014-slides:chapter-2 arg-data)
    (euc-2014-slides:chapter-3 arg-data)))
