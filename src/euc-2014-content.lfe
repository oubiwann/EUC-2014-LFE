(defmodule euc-2014-content
  (export all))

(include-lib "deps/reveal-js/include/macros.lfe")

(defun build-slide-deck (_)
  (deck
    (euc-2014-cover:build) ; Title
    (euc-2014-ch1:build)   ; Overview
    (euc-2014-ch2:build)   ; Introduction
    (euc-2014-ch3:build)   ; New Developments
    (euc-2014-ch4:build)   ; Special Projects
    (euc-2014-ch5:build)   ; Language Interop
    (euc-2014-ch6:build)   ; Wrap-up
    (euc-2014-ch7:build)   ; Contact
    (euc-2014-ch8:build)   ; References
    (euc-2014-ch9:build)   ; Thanks!
    ))

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
