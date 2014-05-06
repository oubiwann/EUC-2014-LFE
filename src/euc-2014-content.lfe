(defmodule euc-2014-content
  (export all))

(include-lib "deps/reveal-js/include/macros.lfe")

(defun build-slide-deck (_)
  (deck
    (euc-2014-intro:build)
    (euc-2014-ch1:build)
    (euc-2014-ch2:build)
    (euc-2014-ch3:build)))
