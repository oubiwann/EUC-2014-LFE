(defmodule euc-2014-ch2
  (export all))

(include-lib "deps/reveal-js/include/macros.lfe")

(defun build ()
  (chapter
    (slide
      (h1 '"Powered By")
      (h3 '"Erlang")
      (img '(src "/images/Erlang_logo.png")))
    (slide
      (h1 '"Powered By")
      (h3 '"YAWS")
      (img '(src "/images/yaws_logo.png")))
    (slide
      (h1 '"Powered By")
      (h3 '"Lisp Flavored Erlang")
      (img '(src "/images/LispFlavoredErlang-small-square.png")))
    (slide
      (h1 '"Powered By")
      (h3 '"Exemplar")
      (img '(src "/images/juggernaut-tiny.png"))
      (p '(class "fragment") (small '"Don't you know who I am?")))
    (slide
      (h1 '"Powered By")
      (h3 '"Reveal.js"))))

