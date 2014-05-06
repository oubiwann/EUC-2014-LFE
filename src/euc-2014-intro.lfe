(defmodule euc-2014-intro
  (export all))

(include-lib "deps/reveal-js/include/macros.lfe")

(defun build ()
  (cover
    (h1 '"LFE-Reveal-JS")
    (h3 (list '"HTML Presentation Made" (em '" Ludicrously ") '"Robust"))
    (p (small '"(and absurdly hip)"))
    (p '"The Exemplar Presentation Framework")))
