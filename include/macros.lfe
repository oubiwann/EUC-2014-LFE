(include-lib "deps/reveal-js/include/macros.lfe")

(defmacro title-page body
  "This is a convenience macro for the front cover of a deck."
  `(section '(data-background "images/stockholm-data4-4-regular-cropped.jpg")
            (list ,@body)))

(defmacro chapter body
  "This is a convenience macro for defining a new chapter."
  `(section '(data-background "images/stockholm-data4-4-regular-cropped.jpg")
            (list ,@body)))

(defmacro slide body
  "This is a convenience macro for creating a new slide."
    `(section '(data-background "images/stockholm-data4-4-regular-cropped.jpg")
            (list ,@body)))
