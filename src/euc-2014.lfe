(defmodule euc-2014
  (export all))

(include-lib "lfest/include/macros.lfe")

(defroutes
  ;; This is a single-page app, so there is only one valid route.
  ('GET "/"
    (lfest-html-resp:ok
      (euc-2014-content:build-index arg-data))))

(defun out (arg-data)
  "This function is executed by YAWS. It is the YAWS entry point for our app."
  (lfest:out-helper arg-data #'routes/3))
