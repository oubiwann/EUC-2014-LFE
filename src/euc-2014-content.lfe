(defmodule euc-2014-content
  (export all))

(include-lib "deps/reveal-js/include/macros.lfe")

(defun build-slide-deck (_)
  (deck
    (euc-2014-intro:build)
    (euc-2014-ch1:build)
    (euc-2014-ch2:build)
    (euc-2014-ch3:build)))

(defun build-index (deck-func arg-data)
  (list
    (!doctype 'html)
    (html '(lang "en")
      (list
        (build-head arg-data)
        (body
          (list
            (funcall deck-func arg-data)
            (reveal-js-content:build-javascript arg-data)))))))

(defun build-head (arg-data)
  (list
    (reveal-js-content:build-head arg-data)
    (link '(rel "stylesheet"
            href "css/theme/simple.css"
            d "theme"))
    (link '(rel "stylesheet"
            href "css/styles.css"))))
